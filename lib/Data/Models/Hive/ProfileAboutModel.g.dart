// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Profile/ProfileAboutModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileAboutModelAdapter extends TypeAdapter<ProfileAboutModel> {
  @override
  final int typeId = 5;

  @override
  ProfileAboutModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfileAboutModel(
      text: fields[0] as String?,
      avatarPath: fields[1] as String?,
      backgroundImagePath: fields[2] as String?,
      reputation: fields[4] as double?,
      status: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProfileAboutModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.avatarPath)
      ..writeByte(2)
      ..write(obj.backgroundImagePath)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.reputation);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileAboutModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
