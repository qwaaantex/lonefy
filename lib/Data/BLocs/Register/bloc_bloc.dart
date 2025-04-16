
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:lonefy/Data/BLocs/Register/bloc_state.dart';

class RegisterCubit extends Cubit<RegisterBlocMetrics> {
  RegisterCubit(String language) : super(RegisterBlocMetrics(currentLanguage: language));

  Future<void> changeLanguage(String language) async {
    try {
      final box = Hive.box("language");
      await box.put("value", language);
      emit(RegisterBlocMetrics(currentLanguage: language));
    } catch (e) {
      print(e.toString());
      emit(RegisterBlocMetrics(currentLanguage: "en"));
    }
  }
}