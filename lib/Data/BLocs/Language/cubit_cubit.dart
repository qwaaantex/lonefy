
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:lonefy/Data/BLocs/Language/cubit_state.dart';

class LanguageCubit extends Cubit<LanguageMetrics> {
  LanguageCubit(String language) : super(LanguageMetrics(currentLanguage: language));

  Future<void> changeLanguage(String language) async {
    try {
      final box = Hive.box<LanguageMetrics>("language");
      await box.put("value", LanguageMetrics(currentLanguage: language));
      emit(LanguageMetrics(currentLanguage: language));
    } catch (e) {
      print(e.toString());
      emit(LanguageMetrics(currentLanguage: "en"));
    }
  }
}