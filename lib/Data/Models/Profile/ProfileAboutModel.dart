

import 'package:hive_flutter/hive_flutter.dart';
part '../Hive/ProfileAboutModel.g.dart';

@HiveType(typeId: 5)
class ProfileAboutModel {
  @HiveField(0)
  final String? text;
  @HiveField(1)
  final String? avatarPath;
  @HiveField(2)
  final String? backgroundImagePath;

  ProfileAboutModel({
    this.text,
    this.avatarPath,
    this.backgroundImagePath,
  });

  ProfileAboutModel copyWith({
    final String? text,
    final String? avatarPath,
    final String? backgroundImagePath
  }) {
    return ProfileAboutModel(
      text: text ?? this.text,
      avatarPath: avatarPath ?? this.avatarPath,
      backgroundImagePath: backgroundImagePath ?? this.backgroundImagePath
    );
  }
}