

import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_events.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_state.dart';
import 'package:lonefy/Data/Models/Profile/ProfileAboutModel.dart';


final box = Hive.box<ProfileAboutModel>("ProfileAboutInfo");
var defaultValues = ProfileAboutModel(reputation: 0.0);
final dataCurrent = box.get("value") ?? ProfileAboutModel();

class ProfileBloc extends Bloc<ProfileState, ProfileMetrics> {
  ProfileBloc(Client client) : super(ProfileMetrics(isLoaded: false, reputation: box.get("value", defaultValue: defaultValues)!.reputation)) {
    on<ProfileGet>((event, emit) => profileGetEvent(event, emit, client));
    on<ProfileSaveAboutInfo>((event, emit) => profileSaveAboutEvent(event, emit));
    on<ProfileStatusInfo>((event, emit) => profileSaveStatusEvent(event, emit));
    on<ProfileReputationInfo>((event, emit) => profileSaveReputationEvent(event, emit));
    on<ProfileChangeNameInfo>((event, emit) => profileSaveNameEvent(event, emit, client));
  }

  void profileGetEvent(ProfileGet event, Emitter<ProfileMetrics> emit, Client client) async {
    try {
      final account = Account(client);
      final getAccountInfo = await account.get();
      emit(state.copyWith(isLoaded: true, nameUser: getAccountInfo.name, emailUser: getAccountInfo.email));
    } on AppwriteException catch (e) {
      debugPrint(e.toString());
      emit(state.copyWith(isLoaded: false));
    }
  }

  void profileSaveAboutEvent(ProfileSaveAboutInfo event, Emitter<ProfileMetrics> emit) async {
    var currentObject = box.get("value") ?? ProfileAboutModel();
    var updatedObject = currentObject.copyWith(text: event.newText);
    try {
      await box.put("value", updatedObject);
    } on HiveError catch (e) {
      debugPrint(e.toString());
    }
  }
  void profileSaveStatusEvent(ProfileStatusInfo event, Emitter<ProfileMetrics> emit) async {
    try {
      await box.put("value", dataCurrent.copyWith(status: event.newStatus));
      emit(state.copyWith(status: event.newStatus, isLoaded: true));
    } on HiveError catch (e) {
      emit(state.copyWith(isLoaded: false));
      debugPrint(e.toString());
    }
  } 

  void profileSaveReputationEvent(ProfileReputationInfo event, Emitter<ProfileMetrics> emit) async {
    try {
      await box.put("value", dataCurrent.copyWith(reputation: event.newReputation));
      emit(state.copyWith(reputation: event.newReputation, isLoaded: true));
    } on HiveError catch (e) {
      emit(state.copyWith(isLoaded: false));
      debugPrint(e.toString());
    }
  }

  void profileSaveNameEvent(ProfileChangeNameInfo event, Emitter<ProfileMetrics> emit, Client client) async {
    try {
      final account = Account(client);
      await box.put("value", dataCurrent.copyWith(name: event.newName));
      await account.updateName(name: event.newName);
      emit(state.copyWith(nameUser: event.newName));
    } on HiveError catch(e) {
      debugPrint(e.toString());
      emit(state.copyWith(isLoaded: false));
    }
  }
}