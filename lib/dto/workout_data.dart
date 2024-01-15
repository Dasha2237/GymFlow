import 'package:hive/hive.dart';

part 'workout_data.g.dart'; // This is the generated file

@HiveType(typeId: 3)
class WorkoutData {
  @HiveField(0)
  late DateTime date;

  WorkoutData({
    required this.date,
    // Add other parameters as needed
  });

}