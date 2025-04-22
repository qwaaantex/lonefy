// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../LoggingModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoggingModelAdapter extends TypeAdapter<LoggingModel> {
  @override
  final int typeId = 3;

  @override
  LoggingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoggingModel(
      isLogged: fields[0] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, LoggingModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.isLogged);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoggingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
