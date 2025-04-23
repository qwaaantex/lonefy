import 'package:hive/hive.dart';
import 'package:lonefy/Data/BLocs/Language/cubit_state.dart';
import 'package:lonefy/Data/Models/LoggingModel.dart';

class Adapters {

  void registerAdapters() {
    Hive.registerAdapter(LanguageMetricsAdapter());
    Hive.registerAdapter(LoggingModelAdapter());
  }
}