import 'package:app_sport/dto/period_with_phases_data.dart';

import 'health_data.dart';
import 'period_date.dart';

import 'profile_data.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

//part 'database_manager.g.dart';

class DatabaseManager {
  static late Box<ProfileData> profileDataBox;
  static late Box<HealthData> healthDataBox;
  static late Box<PeriodDate> periodDateBox;


  DatabaseManager._privateConstructor();

  static DatabaseManager? _instance;

  static Future<void> init() async {
    if (_instance == null) {
      _instance = DatabaseManager._privateConstructor();
      await _instance!._initHive();
    }
  }

  Future<void> _initHive() async {
    final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    Hive.registerAdapter(ProfileDataAdapter());
    Hive.registerAdapter(HealthDataAdapter());
    Hive.registerAdapter(PeriodDateAdapter());
    profileDataBox = await Hive.openBox<ProfileData>('profile_data');
    healthDataBox = await Hive.openBox<HealthData>('health_data');
    periodDateBox = await Hive.openBox<PeriodDate>('period_date');
  }

  static DatabaseManager get instance {
    return _instance!;
  }

  // Methods for saving data
  static void saveProfileData(ProfileData profileData) {
    profileDataBox.add(profileData);
  }

  // Methods for retrieving data
  static ProfileData? getProfileData() {
    return profileDataBox.isNotEmpty ? profileDataBox.values.first : null;
  }
  static clearProfileData() {
    profileDataBox.clear();
  }
  static updateProfileData(ProfileData profileData) {
    profileDataBox.putAt(0, profileData);
  }

  static void saveHealthData(HealthData healthData) {
    healthDataBox.add(healthData);
  }

  static List<HealthData> getHealthData() {
    return healthDataBox.values.toList();
  }

  static void savePeriodDate(PeriodDate periodDate) {
    periodDateBox.add(periodDate);
  }

  static List<PeriodDate> getPeriodDate() {
    return periodDateBox.values.toList();
  }

  static clearPeriodDate() {
    periodDateBox.clear();
  }

  static clearHealthData() {
    healthDataBox.clear();
  }

  static void updateOrAddHealthData(HealthData healthData) {
    List<HealthData> healthDataList = healthDataBox.values.toList();
    for (int i = 0; i < healthDataList.length; i++) {
      if (isSameDay(healthDataList[i].date, healthData.date)) {
        healthDataBox.putAt(i, healthData);
        return;
      }
    }
    healthDataBox.add(healthData);
    sortHealthData();
  }

  //a method to check if two dates are the same day
  static bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year && date1.month == date2.month && date1.day == date2.day;
  }
  // a method to check if first date is before second date
  static bool isBefore(DateTime date1, DateTime date2) {
    return date1.year < date2.year || (date1.year == date2.year && date1.month < date2.month) || (date1.year == date2.year && date1.month == date2.month && date1.day < date2.day);
  }

  // a method to check if first date is after second date
  static bool isAfter(DateTime date1, DateTime date2) {
    return date1.year > date2.year || (date1.year == date2.year && date1.month > date2.month) || (date1.year == date2.year && date1.month == date2.month && date1.day > date2.day);
  }

  //a method to check if two dates are in the same month
  static bool isSameMonth(DateTime date1, DateTime date2) {
    return date1.year == date2.year && date1.month == date2.month;
  }

  static HealthData getHealthDataByDate(DateTime date) {
    List<HealthData> healthDataList = healthDataBox.values.toList();
    for (int i = 0; i < healthDataList.length; i++) {
      if (isSameDay(healthDataList[i].date, date)) {
        return healthDataList[i];
      }
    }
    for (int i = 0; i < healthDataList.length; i++) {
      if (isBefore(healthDataList[i].date, date)) {
        HealthData healthData = HealthData(date: date, weight: healthDataList[i].weight);
        healthDataBox.add(healthData);
        sortHealthData();
        return healthData;
      }
    }
    return HealthData(date: date, weight: profileDataBox.values.first!.weight);
  }

  // a method to sort health data by date in healthDataBox
  static void sortHealthData() {
    List<HealthData> healthDataList = healthDataBox.values.toList();
    healthDataList.sort((a, b) => a.date.compareTo(b.date));
    healthDataBox.clear();
    healthDataBox.addAll(healthDataList);
  }

  //a method to sort period dates by date in periodDateBox
  static void sortPeriodDates() {
    List<PeriodDate> periodDateList = periodDateBox.values.toList();
    periodDateList.sort((a, b) => a.date.compareTo(b.date));
    periodDateBox.clear();
    periodDateBox.addAll(periodDateList);
  }

  //a fuction to calculate next period date
  static PeriodDate getNextPeriodDate(PeriodDate date){
    int length = profileDataBox.values.first!.periodLength;
    DateTime nextDate = date.date.add(Duration(days: length));
    PeriodDate periodDate = PeriodDate(date: nextDate);
    periodDateBox.add(periodDate);
    //sortPeriodDates();
    return periodDate;
  }
  static PeriodDate getPreviousPeriodDate(PeriodDate date){
    int length = profileDataBox.values.first!.periodLength;
    DateTime previousDate = date.date.subtract(Duration(days: length));
    PeriodDate periodDate = PeriodDate(date: previousDate);
    periodDateBox.add(periodDate);
    //sortPeriodDates();
    return periodDate;
  }

  // a function to get period date for previous current and nex month
  static List<PeriodDate> getPeriodDatesForMonth(DateTime date) {
    List<PeriodDate> periodDateList = periodDateBox.values.toList();
    List<PeriodDate> periodDates = [];
    if (isBefore(date, periodDateList.first.date)) {
      PeriodDate currentPeriodDate = periodDateList.first;
      while (isBefore(date, currentPeriodDate.date)) {
        currentPeriodDate = getPreviousPeriodDate(currentPeriodDate);
      }
      periodDateBox.add(currentPeriodDate);
      periodDateBox.add(getPreviousPeriodDate(currentPeriodDate));
      sortPeriodDates();
    }
    if (isAfter(date, periodDateList.last.date)) {
      PeriodDate currentPeriodDate = periodDateList.last;
      while (isAfter(date, currentPeriodDate.date)) {
        currentPeriodDate = getNextPeriodDate(currentPeriodDate);
      }
      periodDateBox.add(currentPeriodDate);
      periodDateBox.add(getNextPeriodDate(currentPeriodDate));
      sortPeriodDates();
    }
    periodDateList = periodDateBox.values.toList();
    for (int i = 0; i < periodDateList.length; i++) {
      if (isSameMonth(date, periodDateList[i].date)) {
        periodDates.add(periodDateList[i-1]);
        periodDates.add(periodDateList[i]);
        periodDates.add(periodDateList[i + 1]);
      }
    }
    return periodDates;
  }
  static List<PeriodWithPhasesData> getPeriodsWithPhasesForCalendar(DateTime date) {
    List<PeriodDate> periodDatesInMonth = getPeriodDatesForMonth(date);
    List<PeriodWithPhasesData> periodsWithPhases = [];
    for (int i = 0; i < periodDatesInMonth.length; i++) {
      periodsWithPhases.add(PeriodWithPhasesData(periodDatesInMonth[i], profileDataBox.values.first!.periodLength, profileDataBox.values.first!.cycleLength));
    }
    return periodsWithPhases;
  }
}
