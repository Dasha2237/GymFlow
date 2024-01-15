import 'dart:ffi';

import 'package:app_sport/dto/period_date.dart';

class PeriodWithPhasesData {
  late DateTime periodStartDate;
  late DateTime periodEndDate;
  late DateTime folicularPhaseStartDate;
  late DateTime folicularPhaseEndDate;
  late DateTime ovulationPhaseStartDate;
  late DateTime ovulationPhaseEndDate;
  late DateTime lutealPhaseStartDate;
  late DateTime lutealPhaseEndDate;

  PeriodWithPhasesData(PeriodDate periodDate, int periodLength, int cycleLength) {
    periodStartDate = periodDate.date;
    periodEndDate = periodDate.date.add(Duration(days: periodLength - 1));
    folicularPhaseStartDate =
        periodDate.date.add(Duration(days: periodLength));
    double halfOfCycle = cycleLength / 2;
    folicularPhaseEndDate =
        periodDate.date.add(Duration(days: halfOfCycle.toInt() - 1));
    ovulationPhaseStartDate = folicularPhaseEndDate.add(Duration(days: 1));
    ovulationPhaseEndDate = ovulationPhaseStartDate.add(Duration(days: 4));
    lutealPhaseStartDate = ovulationPhaseEndDate.add(Duration(days: 1));
    lutealPhaseEndDate = periodStartDate.add(Duration(days: cycleLength - 1));
  }
  // method to string
  String toString() {
    return "Period start date: " +
        periodStartDate.toString() +
        "\n" +
        "Period end date: " +
        periodEndDate.toString() +
        "\n" +
        "Folicular phase start date: " +
        folicularPhaseStartDate.toString() +
        "\n" +
        "Folicular phase end date: " +
        folicularPhaseEndDate.toString() +
        "\n" +
        "Ovulation phase start date: " +
        ovulationPhaseStartDate.toString() +
        "\n" +
        "Ovulation phase end date: " +
        ovulationPhaseEndDate.toString() +
        "\n" +
        "Luteal phase start date: " +
        lutealPhaseStartDate.toString() +
        "\n" +
        "Luteal phase end date: " +
        lutealPhaseEndDate.toString() +
        "\n";
  }
}