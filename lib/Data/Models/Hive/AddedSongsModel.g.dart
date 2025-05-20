// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Songs/AddedSongsModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddedSongsModelAdapter extends TypeAdapter<AddedSongsModel> {
  @override
  final int typeId = 6;

  @override
  AddedSongsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddedSongsModel(
      addedSongs: (fields[0] as List).cast<String?>(),
    );
  }

  @override
  void write(BinaryWriter writer, AddedSongsModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.addedSongs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddedSongsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
