import 'package:hive/hive.dart';

part 'health_data.g.dart'; // This is the generated file

@HiveType(typeId: 0)
class HealthData {
  @HiveField(0)
  late String date;

  @HiveField(1)
  late double weight;

  // Add other fields as needed

  HealthData({
    required this.date,
    required this.weight,
    // Add other parameters as needed
  });
}