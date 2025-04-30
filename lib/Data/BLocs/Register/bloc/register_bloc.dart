import 'package:appwrite/appwrite.dart';
import 'package:appwrite/enums.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:lonefy/Data/BLocs/Register/bloc/register_metrics.dart';
import 'package:lonefy/Data/Models/AuthModel.dart';
import 'package:lonefy/Data/Models/LoggingModel.dart';
import 'package:lonefy/Data/Providers/Register/Provider.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterState, RegisterInitial> {
  RegisterBloc(Client client, BuildContext context) : super(RegisterInitial(succes: false)) {
    on<RegisterSign>((event, emit) => registerSign(event, emit, client, context));
    on<RegisterSignWithGoogle>((event, emit) => registerSignWithGoogle(event, emit, client));
  }

  void registerSign(RegisterSign event, Emitter<RegisterInitial> emit, Client client, BuildContext context) async {
    final provider = context.read<RegisterProvider>();
    try {
      final boxAuth = Hive.box<AuthModel>("AuthInfo");
      final account = Account(client);
        final Box<LoggingModel> box = Hive.box<LoggingModel>("Logged");
        await account.create(userId: ID.unique(),
          email: provider.email, password: provider.password, name: 'User');
        await account.createEmailPasswordSession(email: provider.email, password: provider.password);
        await box.put("value", LoggingModel(isSucces: true, isLogged: true));
        await boxAuth.put("value", AuthModel(email: provider.email, password: provider.password));
        emit(RegisterInitial(succes: true, isLogged: true));
    } on AppwriteException
    catch (e) {
      debugPrint(e.toString());
      emit(RegisterInitial(succes: false, isLogged: false));
    }
  }
  void registerSignWithGoogle(RegisterSignWithGoogle event, Emitter<RegisterInitial> emit, Client client) async {
    try {
      final account = Account(client);
      await account.createOAuth2Session(provider: OAuthProvider.google);
    } on AppwriteException catch (e) {
      debugPrint(e.toString());
    }
  }
}
