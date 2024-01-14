import 'dart:io';

import 'package:app_sport/dto/health_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dto/database_manager.dart';
import 'dto/profile_data.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

class _ProfileState extends State<Profile> {
  double _currentSliderValue = 1;
  bool _isLoseWeight = false;
  bool _isMaintainWeight = false;
  bool _isGainWeight = false;
  HealthData healthData = DatabaseManager.getHealthDataByDate(DateTime.now());
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double bmiLeft = 89;
    Color colorText = const Color(0xFF7F7F7F);
    Color colorBorder = const Color(0xFF7F7F7F);
    Color colorBack = Colors.white;
    Color colorPressed = const Color(0xFFF62457);
    const int weightCount = 55;
    ProfileData? profileData = DatabaseManager.getProfileData();
    if (profileData == null) {
      profileData = ProfileData(
          name: 'Name',
          surname: 'Surname',
          weight: 55,
          height: 170,
          imagePath: 'lib/assets/profile_picture.png',
          periodLength: 5,
          cycleLength: 28,
          aim: 'Lose weight',
          workoutsPerWeek: 3,
          birthDate: DateTime.now(),
          lastPeriodDate: DateTime.now());
      DatabaseManager.saveProfileData(profileData);
    }
    _currentSliderValue = profileData.workoutsPerWeek.toDouble();
    _isLoseWeight = profileData.aim == 'Lose weight';
    _isMaintainWeight = profileData.aim == 'Maintain weight';
    _isGainWeight = profileData.aim == 'Gain weight';
    double BMI = healthData.weight / (profileData.height * profileData.height / 10000);
    //a field to store comment on your BMI
    if (BMI < 18.5) {
      //underweight
    } else if (BMI >= 18.5 && BMI < 25) {
      //normal weight
    } else if (BMI >= 25 && BMI < 30) {
      //overweight
    } else if (BMI >= 30) {
      //obesity
    }

    //a field to store color of Lose weight button
    if (profileData.aim == 'Lose weight') {
      Color loseWeightButton = Color.fromARGB(255, 255, 255, 255);
    } else {
      Color loseWeightButton = Color(0xFF7F7F7F);
    }


    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 270,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: screenWidth,
                      height: 121,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFF62457), Color(0xFFFFB199)],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 50,
                        child: Container(
                          child: Column(children: [
                            Row(
                              children: [
                                Container(
                                    width: 140,
                                    height: 140,
                                    clipBehavior: Clip.antiAlias,
                                    margin: EdgeInsets.only(bottom: 10),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.file(File(profileData.imagePath),
                                        fit: BoxFit.cover),
                                    )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  profileData.name + ' ' + profileData.surname,
                                  style: GoogleFonts.getFont(
                                    'Merriweather Sans',
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '${DatabaseManager.getDaysBeforeNextPeriod(DateTime.now())} days before next period',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Color.fromRGBO(176, 176, 176, 1),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            )
                          ]),
                        ))
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: Text(
                            'My cycle',
                            style: GoogleFonts.getFont(
                              'Merriweather Sans',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: RichText(
                              text: TextSpan(
                                  text: 'You are on day ${DatabaseManager.getDayOfCycle(DateTime.now())} of ${profileData.cycleLength} in ',
                                  style: GoogleFonts.getFont(
                                    'Merriweather Sans',
                                    color: Color.fromRGBO(176, 176, 176, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  children: [
                                TextSpan(
                                    text: DatabaseManager.getPeriodPhase(DateTime.now()),
                                    style: GoogleFonts.getFont(
                                      'Merriweather Sans',
                                      color: Color.fromRGBO(247, 37, 87, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    )),
                                TextSpan(
                                    text: ' phase',
                                    style: GoogleFonts.getFont(
                                      'Merriweather Sans',
                                      color: Color.fromRGBO(176, 176, 176, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ])),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 7,
                          width: 64,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(199, 238, 237, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(0)),
                          ),
                        ),
                        Container(
                          height: 7,
                          width: 64,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 0, 61, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0)),
                          ),
                        ),
                        Container(
                          height: 7,
                          width: 64,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 242, 195, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0)),
                          ),
                        ),
                        Container(
                          height: 7,
                          width: 64,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(241, 187, 255, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(5)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          child: Text(
                            'Period length:',
                            style: GoogleFonts.getFont(
                              'Inter',
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          child: Text(
                            profileData.periodLength.toString() + ' days',
                            style: GoogleFonts.getFont(
                              'Inter',
                              color: Color.fromRGBO(107, 107, 107, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: Text(
                            'Cycle duration:',
                            style: GoogleFonts.getFont(
                              'Inter',
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 12),
                          child: Text(
                            profileData.cycleLength.toString() + ' days',
                            style: GoogleFonts.getFont(
                              'Inter',
                              color: Color.fromRGBO(107, 107, 107, 1),
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                margin: EdgeInsets.only(top: 28),
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 9),
                          child: Text(
                            'Weight',
                            style: GoogleFonts.getFont(
                              'Merriweather Sans',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '${healthData.weight.toStringAsFixed(1)} kg',
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          DateTime.now().day.toString() +
                              ' ' +
                              DateTime.now().month.toString(),
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 263,
                          height: 68,
                          margin: EdgeInsets.only(top: 20),
                        )
                      ],
                    ),
                  ],
                ))
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 24, bottom: 30, top: 17, right: 24),
                margin: EdgeInsets.only(top: 28),
                width: 328,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 61, 108, 1),
                      Color.fromRGBO(255, 56, 89, 0.392)
                    ],
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Text(
                            'BMI',
                            style: GoogleFonts.getFont(
                              'Merriweather Sans',
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            'lib/assets/burger.png',
                            width: 20,
                            height: 20,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            BMI.toStringAsFixed(1),
                            style: GoogleFonts.getFont(
                              'Inter',
                              color: Colors.white,
                              fontSize: 44,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 6),
                                  child: Text(
                                    'Normal weight',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )),
                              Stack(
                                children: [
                                  Positioned(
                                    child: Container(
                                      width: 162,
                                      height: 14,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade50,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: bmiLeft,
                                    child: Container(
                                      width: 4,
                                      height: 14,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFF62457),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
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
                padding: EdgeInsets.only(bottom: 28, top: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Your aim',
                          style: GoogleFonts.getFont(
                            'Merriweather Sans',
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _isLoseWeight = true;
                              _isMaintainWeight = false;
                              _isGainWeight = false;
                              profileData!.aim = 'Lose weight';
                              DatabaseManager.updateProfileData(profileData);
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: colorBorder,
                              ),
                              color: _isLoseWeight ? colorPressed : colorBack,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(
                                top: 7, bottom: 7, right: 11, left: 11),
                            child: Text(
                              'Lose weight',
                              style: GoogleFonts.getFont(
                                'Inter',
                                color: _isLoseWeight ? Colors.white : colorText,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _isLoseWeight = false;
                              _isMaintainWeight = true;
                              _isGainWeight = false;
                              profileData!.aim = 'Maintain weight';
                              DatabaseManager.updateProfileData(profileData);
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: colorBorder,
                              ),
                              color: _isMaintainWeight ? colorPressed : colorBack,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(
                                top: 7, bottom: 7, right: 11, left: 11),
                            child: Text(
                              'Maintain weight',
                              style: GoogleFonts.getFont(
                                'Inter',
                                color: _isMaintainWeight ? Colors.white : colorText,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _isLoseWeight = false;
                              _isMaintainWeight = false;
                              _isGainWeight = true;
                              profileData!.aim = 'Gain weight';
                              DatabaseManager.updateProfileData(profileData);
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: colorBorder,
                              ),
                              color: _isGainWeight ? colorPressed : colorBack,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(
                                top: 7, bottom: 7, right: 11, left: 11),
                            child: Text(
                              'Gain weight',
                              style: GoogleFonts.getFont(
                                'Inter',
                                color: _isGainWeight ? Colors.white : colorText,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ],
                    )
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
                padding: EdgeInsets.only(bottom: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Workouts per week',
                          style: GoogleFonts.getFont(
                            'Merriweather Sans',
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 31,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: SliderTheme(
                            data: SliderThemeData(
                              // here
                              trackShape: CustomTrackShape(),
                            ),
                            child: Slider(
                              activeColor: const Color(0xFFF62457),
                              value: _currentSliderValue,
                              max: 7,
                              divisions: 7,
                              label: _currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                profileData!.workoutsPerWeek = value.toInt();
                                DatabaseManager.updateProfileData(profileData!);
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
