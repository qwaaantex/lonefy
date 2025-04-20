// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_metrics.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RegisterInitialAdapter extends TypeAdapter<RegisterInitial> {
  @override
  final int typeId = 1;

  @override
  RegisterInitial read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RegisterInitial(
      succes: fields[0] as bool,
      isLogged: fields[1] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, RegisterInitial obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.succes)
      ..writeByte(1)
      ..write(obj.isLogged);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegisterInitialAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
