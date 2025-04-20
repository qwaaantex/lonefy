import 'package:appwrite/appwrite.dart' show Account, ID;
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:lonefy/Data/BLocs/Register/bloc/register_metrics.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterState, RegisterInitial> {
  RegisterBloc(Account _account) : super(RegisterInitial(succes: false)) {
    on<RegisterSign>((event, emit) async {
        final Box<RegisterInitial> box = Hive.box<RegisterInitial>("Signing");
      try {
        await _account.create(userId: ID.unique(),
          email: event.email, password: event.password, name: 'User');

        await box.put("value", RegisterInitial(succes: true, isLogged: true));
        emit(RegisterInitial(succes: true, isLogged: true));
      } catch (e) {
        print(e);
        await box.put("value", RegisterInitial(succes: false, isLogged: null));
        emit(RegisterInitial(succes: false, isLogged: null));

      }
    });
  }
}
