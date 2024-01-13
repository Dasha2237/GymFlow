// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period_date.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PeroiodDateAdapter extends TypeAdapter<PeroiodDate> {
  @override
  final int typeId = 0;

  @override
  PeroiodDate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PeroiodDate(
      date: fields[0] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, PeroiodDate obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PeroiodDateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
