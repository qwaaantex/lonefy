import 'package:hive/hive.dart';
part 'Hive/LoggingModel.g.dart';


@HiveType(typeId: 3)
class LoggingModel {
  @HiveField(0)
  final bool? isLogged;
  @HiveField(1)
  final bool? isSucces;
  LoggingModel({this.isLogged, this.isSucces});
}