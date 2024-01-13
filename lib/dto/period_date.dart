import 'package:hive/hive.dart';

part 'period_date.g.dart'; // This is the generated file

@HiveType(typeId: 0)
class PeroiodDate {
  @HiveField(0)
  late DateTime date;

  // Add other fields as needed

  PeroiodDate({
    required this.date,
    // Add other parameters as needed
  });
}