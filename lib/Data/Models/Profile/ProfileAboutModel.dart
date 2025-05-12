

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
  @HiveField(3)
  final String? status;
  @HiveField(4)
  final double? reputation;
  @HiveField(5)
  final String? name;

  ProfileAboutModel({
    this.name,
    this.text,
    this.avatarPath,
    this.backgroundImagePath,
    this.reputation,
    this.status
  });

  ProfileAboutModel copyWith({
    final String? text,
    final String? avatarPath,
    final String? backgroundImagePath,
    final double? reputation,
    final String? status,
    final String? name,
  }) {
    return ProfileAboutModel(
      text: text ?? this.text,
      avatarPath: avatarPath ?? this.avatarPath,
      backgroundImagePath: backgroundImagePath ?? this.backgroundImagePath,
      reputation: reputation ?? this.reputation,
      status: status ?? this.status,
      name: name ?? this.name,
    );
  }
}