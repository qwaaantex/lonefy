import 'package:appwrite/appwrite.dart';
import 'package:appwrite/enums.dart';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:lonefy/Data/BLocs/Register/bloc/register_metrics.dart';
import 'package:lonefy/Data/Models/LoggingModel.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterState, RegisterInitial> {
  RegisterBloc(Client client, String email, String password) : super(RegisterInitial(succes: false)) {
    on<RegisterSign>((event, emit) async {
        final account = Account(client);
        final Box<LoggingModel> box = Hive.box<LoggingModel>("Logged");
        await account.create(userId: ID.unique(),
          email: email, password: password, name: 'User');

        await box.put("value", LoggingModel(isSucces: true, isLogged: true));
        emit(RegisterInitial(succes: true, isLogged: true));
    });
    on<RegisterSignWithGoogle>((event, emit) => registerSignWithGoogle(event, emit, client));

  }
  void registerSignWithGoogle(RegisterSignWithGoogle event, Emitter<RegisterInitial> emit, Client client) async {
    try {
      final account = Account(client);
      await account.createOAuth2Session(provider: OAuthProvider.google);
    } on AppwriteException catch (e) {
      print(e);
    }

  }
}
