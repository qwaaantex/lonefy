

import 'package:appwrite/appwrite.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:lonefy/Data/Models/AuthModel.dart';
import 'package:lonefy/Data/Models/LoggingModel.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginState, LoginInitial> {
  LoginBloc(Client client) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) => loginSession(event, emit, client));
  }

  void loginSession(LoginEvent event, Emitter<LoginInitial> emit, Client client) async {
    final Account account = Account(client);
    final boxLogged = Hive.box<LoggingModel>("Logged");
    final boxAuth = Hive.box<AuthModel>("AuthInfo");
    await account.deleteSessions();
    try {
      await account.createEmailPasswordSession(email: event.email, password: event.password);
      await boxLogged.put("value", LoggingModel(isLogged: true, isSucces: true));
      await boxAuth.put("value", AuthModel(email: event.email, password: event.password));
    } on AppwriteException catch (e) {
      debugPrint(e.toString());
      await boxLogged.put("value", LoggingModel(isLogged: false, isSucces: false));
    }
  }
}
