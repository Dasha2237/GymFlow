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
        periodDate.date.add(Duration(days: cycleLength - periodLength));
    double halfOfCycle = cycleLength / 2;
    folicularPhaseEndDate =
        periodDate.date.add(Duration(days: halfOfCycle.toInt() - 1));
    ovulationPhaseStartDate = folicularPhaseEndDate.add(Duration(days: 1));
    ovulationPhaseEndDate = ovulationPhaseStartDate.add(Duration(days: 4));
    lutealPhaseStartDate = ovulationPhaseEndDate.add(Duration(days: 1));
    lutealPhaseEndDate = periodStartDate.add(Duration(days: cycleLength - 1));
  }
}