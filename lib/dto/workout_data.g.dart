// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkoutDataAdapter extends TypeAdapter<WorkoutData> {
  @override
  final int typeId = 0;

  @override
  WorkoutData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkoutData(
      name: fields[0] as String,
      date: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, WorkoutData obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkoutDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
