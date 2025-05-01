
import 'package:hive_flutter/hive_flutter.dart';
part '../Hive/ProfileAboutModel.g.dart';

@HiveType(typeId: 5)
class ProfileAboutModel {
  @HiveField(0)
  final String? text;

  ProfileAboutModel({this.text});
}