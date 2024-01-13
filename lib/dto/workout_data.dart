import 'package:hive/hive.dart';

part 'workout_data.g.dart'; // This is the generated file

@HiveType(typeId: 0)
class WorkoutData {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late DateTime date;

  WorkoutData({
    required this.name,
    required this.date,
    // Add other parameters as needed
  });

}