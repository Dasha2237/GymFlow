// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileDataAdapter extends TypeAdapter<ProfileData> {
  @override
  final int typeId = 0;

  @override
  ProfileData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfileData(
      name: fields[0] as String,
      surname: fields[1] as String,
      weight: fields[2] as double,
      height: fields[3] as double,
      imagePath: fields[4] as String,
      periodLength: fields[5] as int,
      cycleLength: fields[6] as int,
      aim: fields[7] as String,
      workoutsPerWeek: fields[8] as int,
      birthDate: fields[9] as DateTime,
      goalWeight: fields[10] as double,
      lastPeriodDate: fields[11] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, ProfileData obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.surname)
      ..writeByte(2)
      ..write(obj.weight)
      ..writeByte(3)
      ..write(obj.height)
      ..writeByte(4)
      ..write(obj.imagePath)
      ..writeByte(5)
      ..write(obj.periodLength)
      ..writeByte(6)
      ..write(obj.cycleLength)
      ..writeByte(7)
      ..write(obj.aim)
      ..writeByte(8)
      ..write(obj.workoutsPerWeek)
      ..writeByte(9)
      ..write(obj.birthDate)
      ..writeByte(10)
      ..write(obj.goalWeight)
      ..writeByte(11)
      ..write(obj.lastPeriodDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
