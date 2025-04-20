// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cubit_state.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LanguageMetricsAdapter extends TypeAdapter<LanguageMetrics> {
  @override
  final int typeId = 1;

  @override
  LanguageMetrics read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LanguageMetrics(
      currentLanguage: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LanguageMetrics obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.currentLanguage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LanguageMetricsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
