import 'package:hive/hive.dart';

part 'profile_data.g.dart'; // This is the generated file

@HiveType(typeId: 0)
class ProfileData {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late String surname;

  @HiveField(2)
  late double weight;

  @HiveField(3)
  late double height;

  //a field to store the path to the image
  @HiveField(4)
  late String imagePath;

  //a field to store length of your period
  @HiveField(5)
  late int periodLength;

  //a field to store your cycle length
  @HiveField(6)
  late int cycleLength;

  //a field to store your aim
  @HiveField(7)
  late String aim;

  //a field to store number of workouts per week
  @HiveField(8)
  late int workoutsPerWeek;

  // a field to store birthdate
  @HiveField(9)
  late DateTime birthDate;


  // a field to store the date of the last period
  @HiveField(10)
  late DateTime lastPeriodDate;


  // Add other fields as needed

  ProfileData({
    required this.name,
    required this.surname,
    required this.weight,
    required this.height,
    required this.imagePath,
    required this.periodLength,
    required this.cycleLength,
    required this.aim,
    required this.workoutsPerWeek,
    required this.birthDate,
    required this.lastPeriodDate,
    // Add other parameters as needed
  });

  int getAge() {
    DateTime now = DateTime.now();
    int age = now.year - birthDate.year;
    if (now.month < birthDate.month || (now.month == birthDate.month && now.day < birthDate.day)) {
      age--;
    }
    return age;
  }
}