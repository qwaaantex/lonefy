import 'package:hive/hive.dart';
import 'package:lonefy/Data/BLocs/Language/cubit_state.dart';
import 'package:lonefy/Data/Models/AuthModel.dart';
import 'package:lonefy/Data/Models/LoggingModel.dart';
import 'package:lonefy/Data/Models/Profile/ProfileAboutModel.dart';
import 'package:lonefy/Data/Models/Songs/AddedSongsModel.dart';

class Adapters {

  void registerAdapters() {
    Hive.registerAdapter(LanguageMetricsAdapter());
    Hive.registerAdapter(LoggingModelAdapter());
    Hive.registerAdapter(AuthModelAdapter());
    Hive.registerAdapter(ProfileAboutModelAdapter());
    Hive.registerAdapter(AddedSongsModelAdapter());
  }
}