import 'dart:io';

import 'package:app_sport/dto/database_manager.dart';
import 'package:app_sport/dto/health_data.dart';
import 'package:app_sport/dto/profile_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProfileData? profileData = DatabaseManager.getProfileData();
  HealthData healthData = DatabaseManager.getHealthDataByDate(DateTime.now());
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  void incrementCounter() {
    setState(() {
      healthData.weight += 0.10;
      DatabaseManager.updateOrAddHealthData(healthData);
    });
  }

  void minusCounter() {
    setState(() {
      healthData.weight -= 0.10;
      DatabaseManager.updateOrAddHealthData(healthData);
    });
  }

  final int phaseNumber = 4;
  final String follicularInfo =
      'The follicular phase starts on the first day of your period and lasts for 13 to 14 days, ending in ovulation. The pituitary gland in the brain releases a hormone to stimulate the production of follicles on the surface of an ovary';
  final String menstruationInfo =
      'Both progesterone and estrogen are at their lowest. Consider low intensity cardio, yoga, Pilates, sculpt with light weights, swimming, or a casual bike ride.';
  final String ovulationInfo =
      'You’ll still be experiencing elevated levels of estrogen, and you can continue to participate in high intensity activities like kickboxing, running, and rowing';
  final String lutealInfo =
      'Estrogen drops off and progesterone is on the rise. Instead of pushing yourself too hard, it may be more comfortable and more beneficial for your body to instead follow a lower impact exercise routine like yoga or swimming.';

  final String follicularTitle = 'It is Follicular Phase now!';
  final String menstruationTitle = 'It is Menstruation now!';
  final String ovulationTitle = 'It is Ovulation now!';
  final String lutealTitle = 'It is Luteal Phase now!';

  final colorMainMenstruation = Color(0xFFF62457);
  final colorSubMenstruation = Color(0xFFFFB199);

  final colorMainOvulation = Color.fromARGB(255, 60, 138, 255);
  final colorSubOvulation = Color.fromARGB(255, 134, 204, 229);

  final colorMainLuteal = Color.fromARGB(255, 201, 24, 255);
  final colorSubLuteal = Color.fromARGB(255, 245, 147, 224);

  final colorMainFollicular = Color.fromARGB(255, 255, 165, 21);
  final colorSubFollicular = Color.fromARGB(255, 255, 206, 30);


  @override
  Widget build(BuildContext context) {
    healthData = DatabaseManager.getHealthDataByDate(DateTime.now());
    String phase = DatabaseManager.getPeriodPhase(DateTime.now());
    String title = '';
    String info = '';
    if (phase == 'Folicular') {
      title = follicularTitle;
      info = follicularInfo;
    } else if (phase == 'Period') {
      title = menstruationTitle;
      info = menstruationInfo;
    } else if (phase == 'Ovulation') {
      title = ovulationTitle;
      info = ovulationInfo;
    } else if (phase == 'Luteal') {
      title = lutealTitle;
      info = lutealInfo;
    }
    double dailyCalorieIntake = 10*healthData.weight.toInt()
        + 6.25*profileData!.height.toInt() - 5 * profileData!.getAge() - 161;
    if (profileData!.aim == 'Lose weight') {
      dailyCalorieIntake *= 0.85;
    } else if (profileData!.aim == 'Gain weight') {
      dailyCalorieIntake *= 1.15;
    }
    if (profileData!.workoutsPerWeek == 1) {
      dailyCalorieIntake *= 1.1;
    } else if (profileData!.workoutsPerWeek == 2) {
      dailyCalorieIntake *= 1.2;
    } else if (profileData!.workoutsPerWeek == 3) {
      dailyCalorieIntake *= 1.3;
    } else if (profileData!.workoutsPerWeek == 4) {
      dailyCalorieIntake *= 1.35;
    } else if (profileData!.workoutsPerWeek == 5) {
      dailyCalorieIntake *= 1.4;
    }
    else if (profileData!.workoutsPerWeek == 6) {
      dailyCalorieIntake *= 1.45;
    }
    else if (profileData!.workoutsPerWeek == 7) {
      dailyCalorieIntake *= 1.5;
    }
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 328,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(right: 10),
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                        child: Image.file(File(profileData!.imagePath),
                        fit: BoxFit.cover)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, ${profileData!.name}!',
                          style: GoogleFonts.getFont(
                            'Merriweather Sans',
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Ready for training?',
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: const Color.fromRGBO(176, 176, 176, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 328,
                padding:
                    EdgeInsets.only(left: 24, bottom: 17, top: 17, right: 24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                  ],
                ),
                margin: EdgeInsets.only(top: 37),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'You are doing great!',
                              style: GoogleFonts.getFont(
                                'Merriweather Sans',
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Progress this week',
                              style: GoogleFonts.getFont(
                                'Inter',
                                color: const Color.fromRGBO(247, 37, 87, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 38),
                        Column(
                          children: [
                            Image.asset(
                              'lib/assets/sport_thing.png',
                              width: 57,
                              height: 57,
                              fit: BoxFit.cover,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 14),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 270,
                              height: 7,
                              decoration: BoxDecoration(
                                color: const Color(0xFFEBEBEB),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            Container(
                              width: DatabaseManager.getProgressInCurrentWeek(DateTime.now())*270/100,
                              height: 7,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF62457),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 14),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                width: 328,
                child: TableCalendar(
                  calendarBuilders: CalendarBuilders(
                    markerBuilder: (context, date, events) {
                      if (events.contains('Folicular')) {
                        return
                          Positioned(
                            right: 1,
                            bottom: 1,
                            child: _buildEventMarker(colorMainFollicular),
                          );

                      }

                      if (events.contains('Menstruation')) {
                        return
                          Positioned(
                            right: 1,
                            bottom: 1,
                            child: _buildEventMarker(colorMainMenstruation),

                        );
                      }

                      if (events.contains('Ovulation')) {
                        return
                          Positioned(
                            right: 1,
                            bottom: 1,
                            child: _buildEventMarker(colorMainOvulation),

                        );
                      }

                      if (events.contains('Luteal')) {
                        return
                          Positioned(
                            right: 1,
                            bottom: 1,
                            child: _buildEventMarker(colorMainLuteal),
                        );
                      }

                      return null;
                    },
                  ),
                  headerStyle: HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  availableGestures: AvailableGestures.all,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: today,
                  onDaySelected: _onDaySelected,
                  eventLoader: (day) {String phase = DatabaseManager.getPeriodPhase(day);
                  if (phase == 'Folicular') {
                    return ['Folicular']; // Use a unique identifier for each phase
                  } else if (phase == 'Period') {
                    return ['Menstruation']; // Use a unique identifier for each phase
                  } else if (phase == 'Ovulation') {
                    return ['Ovulation']; // Use a unique identifier for each phase
                  } else if (phase == 'Luteal') {
                    return ['Luteal']; // Use a unique identifier for each phase
                  } else {
                    return [];
                  }
                  },
                ))
          ]),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 328,
                padding: EdgeInsets.all(23),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [colorMainFollicular, colorSubFollicular],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.getFont(
                        'Merriweather Sans',
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        info,
                        style: GoogleFonts.getFont(
                          'Inter',
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 328,
                  padding:
                      EdgeInsets.only(top: 17, left: 34, right: 34, bottom: 39),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(2, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Weight',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                DateTime.now().day.toString() +
                                    '.' +
                                    DateTime.now().month.toString(),
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.all(0)),
                                    onPressed: () => {minusCounter()},
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xFFF62457),
                                                Color(0xFFFFB199)
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Image.asset(
                                            'lib/assets/arrowleft.png',
                                            width: 6,
                                            height: 10,
                                            fit: BoxFit.contain,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  healthData.weight.toStringAsFixed(1) + ' kg',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.all(0)),
                                    onPressed: () => {incrementCounter()},
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xFFF62457),
                                                Color(0xFFFFB199)
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Image.asset(
                                            'lib/assets/arrow.png',
                                            width: 6,
                                            height: 10,
                                            fit: BoxFit.contain,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ]),
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 21,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                  ],
                ),
                padding: EdgeInsets.only(top: 15, left: 15, bottom: 19),
                width: 328,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daily Calorie Intake',
                        style: GoogleFonts.getFont(
                          'Inter',
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        dailyCalorieIntake.toInt().toString() + ' kcal',
                        style: GoogleFonts.getFont(
                          'Inter',
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 298,
                            height: 7,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF62457),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                    ]),
              )
            ],
          ),
          SizedBox(
            height: 46,
          )
        ],
      ),
    ));
  }
}
Widget _buildEventMarker(Color color) {
  return Container(
    width: 10,
    height: 10,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(5),
    ),
  );
}
