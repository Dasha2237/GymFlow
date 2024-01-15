import 'period_with_phases_data.dart';
import 'workout_data.dart';

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
  static late Box<WorkoutData> workoutDataBox;


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
    Hive.registerAdapter(WorkoutDataAdapter());
    profileDataBox = await Hive.openBox<ProfileData>('profile_data');
    healthDataBox = await Hive.openBox<HealthData>('health_data');
    periodDateBox = await Hive.openBox<PeriodDate>('period_date');
    workoutDataBox = await Hive.openBox<WorkoutData>('workout_data');
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

  static void saveWorkoutData(WorkoutData workoutData) {
    workoutDataBox.add(workoutData);
  }

  static List<WorkoutData> getWorkoutData() {
    return workoutDataBox.values.toList();
  }

  static void savePeriodDate(PeriodDate periodDate) {
    periodDateBox.add(periodDate);
    getNextPeriodDate(periodDate);
    getPreviousPeriodDate(periodDate);
    sortPeriodDates();
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

  // a method to understand if date is between or the same as first and second date
  static bool isBetween(DateTime date, DateTime firstDate, DateTime secondDate) {
    return isAfter(date, firstDate) && isBefore(date, secondDate) || isSameDay(date, firstDate) || isSameDay(date, secondDate);
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
    for (int i = 0; i < healthDataList.length; i++) {
      healthDataBox.putAt(i, healthDataList[i]);
    }
  }

  //a method to sort period dates by date in periodDateBox
  static void sortPeriodDates() {
    List<PeriodDate> periodDateList = periodDateBox.values.toList();
    periodDateList.sort((a, b) => a.date.compareTo(b.date));
    for (int i = 0; i < periodDateList.length; i++) {
      periodDateBox.putAt(i, periodDateList[i]);
    }
  }

  //a fuction to calculate next period date
  static PeriodDate getNextPeriodDate(PeriodDate date){
    int length = profileDataBox.values.first!.cycleLength;
    DateTime nextDate = date.date.add(Duration(days: length));
    PeriodDate periodDate = PeriodDate(date: nextDate);
    periodDateBox.add(periodDate);
    //sortPeriodDates();
    return periodDate;
  }
  static PeriodDate getPreviousPeriodDate(PeriodDate date){
    int length = profileDataBox.values.first!.cycleLength;
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
    sortPeriodDates();
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
    for (int i = 0; i  < periodDateList.length - 1; i++) {
      if (isBetween(date, periodDateList[i].date, periodDateList[i + 1].date)) {
        if (i == 0){
          periodDates.add(getPreviousPeriodDate(periodDateList[i]));
        }
        else{
          periodDates.add(periodDateList[i-1]);
        }
        periodDates.add(periodDateList[i]);
        periodDates.add(periodDateList[i + 1]);
        break;
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
  static String getPeriodPhase(DateTime date){
    List<PeriodWithPhasesData> periodsWithPhases = getPeriodsWithPhasesForCalendar(date);
    for (int i = 0; i < periodsWithPhases.length; i++) {
      PeriodWithPhasesData periodWithPhases = periodsWithPhases[i];
      if (isBetween(date, periodWithPhases.periodStartDate, periodWithPhases.lutealPhaseEndDate)){
        if (isBetween(date, periodWithPhases.folicularPhaseStartDate, periodWithPhases.folicularPhaseEndDate)){
          return 'Folicular';
        }
        if (isBetween(date, periodWithPhases.ovulationPhaseStartDate, periodWithPhases.ovulationPhaseEndDate)){
          return 'Ovulation';
        }
        if (isBetween(date, periodWithPhases.lutealPhaseStartDate, periodWithPhases.lutealPhaseEndDate)){
          return 'Luteal';
        }
        if (isBetween(date, periodWithPhases.periodStartDate, periodWithPhases.periodEndDate)){
          return 'Period';
        }
      }
    }
    return 'No data';
  }
  // a method to get the number of days before next period
  static int getDaysBeforeNextPeriod(DateTime date) {
    List<PeriodDate> periodDateList = periodDateBox.values.toList();
    for (int i = 0; i < periodDateList.length; i++) {
      if (isBetween(date, periodDateList[i].date, periodDateList[i + 1].date)) {
        //return periodDateList[i+1].date.difference(date).inDays == 0 ?
        //profileDataBox.values.first!.cycleLength :
        //periodDateList[i+1].date.difference(date).inDays;
        return getDifferenceInDays(periodDateList[i+1].date, date) == 0 ?
        profileDataBox.values.first!.cycleLength :
        getDifferenceInDays(periodDateList[i+1].date, date);
      }
    }
    return periodDateList.first.date.difference(date).inDays;
  }

  //a method to get difference between two dates in days without minutes
  static int getDifferenceInDays(DateTime date1, DateTime date2){
    DateTime dateWithoutMinutes1 = DateTime(date1.year, date1.month, date1.day);
    DateTime dateWithoutMinutes2 = DateTime(date2.year, date2.month, date2.day);
    return dateWithoutMinutes1.difference(dateWithoutMinutes2).inDays;
  }

  // a method to get the number of day of the current cycle
  static int getDayOfCycle(DateTime date) {
    List<PeriodDate> periodDateList = periodDateBox.values.toList();
    for (int i = 0; i < periodDateList.length - 1; i++) {
      if (isBetween(date, periodDateList[i].date, periodDateList[i + 1].date)) {
        if (isSameDay(date, periodDateList[i+1].date)){
          return 1;
        }
        else{
          return getDifferenceInDays(date, periodDateList[i].date) + 1;
        }
      }
    }
    return periodDateList.last.date.difference(date).inDays;
  }

  //a method to write down everything what in the periodBox
  static printPeriodDates() {
    List<PeriodDate> periodDateList = periodDateBox.values.toList();
    for (int i = 0; i < periodDateList.length; i++) {
      print('${periodDateList[i].date.day}.${periodDateList[i].date.month}.${periodDateList[i].date.year}\n');
    }
  }

  // a method to print results of all methods for period for todays date
  static printPeriodResults() {
    DateTime date = DateTime.now();
    print('Days before next period: ${getDaysBeforeNextPeriod(date)}');
    print('Day of cycle: ${getDayOfCycle(date)}');
    print('Period phase: ${getPeriodPhase(date)}');
  }

  //a method to get the number of workouts in the current week
  static int getWorkoutsInCurrentWeek(DateTime date) {
    List<WorkoutData> workoutDataList = workoutDataBox.values.toList();
    int workoutsInCurrentWeek = 0;
    // get monday of the current week
    DateTime monday = date.subtract(Duration(days: date.weekday - 1));
    // get sunday of the current week
    DateTime sunday = date.add(Duration(days: 7 - date.weekday));
    for (int i = 0; i < workoutDataList.length; i++) {
      if (isBetween(workoutDataList[i].date, monday, sunday)) {
        workoutsInCurrentWeek++;
      }
    }
    return workoutsInCurrentWeek;
  }

  static int getProgressInCurrentWeek(DateTime date){
    int workoutsInCurrentWeek = getWorkoutsInCurrentWeek(date);
    int workoutsPerWeek = profileDataBox.values.first!.workoutsPerWeek;
    int progressInCurrentWeek = (workoutsInCurrentWeek / workoutsPerWeek * 100).round();
    if (progressInCurrentWeek > 100){
      return 100;
    }
    return progressInCurrentWeek;
  }
}
