

import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_events.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_state.dart';
import 'package:lonefy/Data/Models/Profile/ProfileAboutModel.dart';

class ProfileBloc extends Bloc<ProfileState, ProfileMetrics> {
  ProfileBloc(Client client) : super(ProfileMetrics(isLoaded: false)) {
    on<ProfileGet>((event, emit) => profileGetEvent(event, emit, client));
    on<ProfileSaveAboutInfo>((event, emit) => profileSaveAboutEvent(event, emit));
  }

  void profileGetEvent(ProfileGet event, Emitter<ProfileMetrics> emit, Client client) async {
    try {
      final account = Account(client);
      final getAccountInfo = await account.get();
      emit(ProfileMetrics(isLoaded: true, nameUser: getAccountInfo.name, emailUser: getAccountInfo.email, isAuth: getAccountInfo.emailVerification));
    } on AppwriteException catch (e) {
      debugPrint(e.toString());
      emit(ProfileMetrics(isLoaded: false));
    }
  }

  void profileSaveAboutEvent(ProfileSaveAboutInfo event, Emitter<ProfileMetrics> emit) async {
    final box = Hive.box<ProfileAboutModel>("ProfileAboutInfo");
    var currentObject = box.get("value") ?? ProfileAboutModel();
    var updatedObject = currentObject.copyWith(text: event.newText);
    try {
      await box.put("value", updatedObject);
    } on HiveError catch (e) {
      debugPrint(e.toString());
    }
  }
}