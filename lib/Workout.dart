import 'package:app_sport/dto/workout_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dto/database_manager.dart';

class Workout extends StatelessWidget {
  int numberOfWorkout = 1;

  List<String> namesForWorkout = ['Cardio & Stretching', 'Weight training','Weight training', 'Cardio'];
  List<int> durationsForFirstWorkout = [60, 60, 60, 90];
  List<int> durationsForSecondWorkout = [45, 60, 60, 60];
  List<int> durationsForThirdWorkout = [60, 60, 80, 40];
  List<List<String>> excercisesForFirstWorkout = [
    ['Yoga x 30 min', 'Stretching x 30 min'],
    ["Squats with a barbell 3x12 (60-65%*)", "Bench press 5x6 (75-80%)",
      "Lying dumbbell flyes 3x12", "Barbell curl 4x8",
      "Press crunches 2x50",],
    [
      "Deadlift 3x12 (60-65%)",
      "Bench press 4x8 (70-75%)",
      "French bench press 3x12",
      "Standing biceps curl 5x6",
      "Press crunches 2x50",
    ],
    ["Aerobic exercise x 90 min"]
  ];
  List<List<String>> excercisesForSecondWorkout = [
    ['Easy biking x 30 min', 'Stretching x 30 min'],
    [
      "Deadlift 5x6 (75-80%)",
      "Bench press 3x12 (60-65%)",
      "Dips (with weights) 4x8",
      "Standing dumbbell biceps curl 3x12",
      "Raising legs bent at the knees to press 4x15",
    ],
    [
      "Squats with barbell 4x8 (70-75%)",
      "Bench press 5x6 (75-80%)",
      "Standing barbell press 4x8",
      "Press to the bottom in a 3x12",
      "Block machine Raising the EZ-bar for biceps in a Scott bench 4x8",
      "Straight leg raise for press 4x12",
    ],
    ["Bike ride x 60 min"]
  ];
  List<List<String>> excercisesForThirdWorkout = [
    ['Pilates x 30 min', 'Stretching x 30 min'],
    [
      "Squats with barbell 4x8 (70-75%)",
      "Bench press 4x4 (80-85%)",
      "Pull-up on the bar 4x8 (with weights)",
      "Arnold Press 4x8",
      "Press crunches 2x50",
    ],
    [
      "Deadlift 5x6 (75-80%)",
      "Bench press 3x12 (60-65%)",
      "Vertical block row (lat) 3x12",
      "Dumbbell flyes lying on a bench 4x8",
      "Standing biceps curl 3x12",
      "Press crunches 2x50",
    ],
    ["Circuit-style training x 40 min"]
  ];
  String phase = DatabaseManager.getPeriodPhase(DateTime.now());

  void _showPopup(BuildContext context, WorkoutDescription workoutDescription) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(workoutDescription.name),
          content: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your excercises today:'),
                SizedBox(
                  height: 20,
                ),
                Text(workoutDescription.exercises.map((exercise) => '\u2022 $exercise').toList().join('\n'))
              ],
            ),
          ),
            actions: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        TextButton(
        onPressed: () {
          WorkoutData data = WorkoutData(date: DateTime.now());
          DatabaseManager.saveWorkoutData(data);
          Navigator.of(context).pop();
        },
        child: Text('Сompleted'),
        ),
        TextButton(
        onPressed: () {
        Navigator.of(context).pop();
        },
        child: Text('Сlose'),
        ),
        ],
        )]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    int indexOfWorkout = phase == 'Period' ? 0 : phase == 'Folicular' ? 1 : phase == 'Ovulation' ? 2 : 3;
    WorkoutDescription firstWorkout = WorkoutDescription(
        name: namesForWorkout[indexOfWorkout],
        description: 'Fullbody',
        duration: durationsForFirstWorkout[indexOfWorkout],
        exercises: excercisesForFirstWorkout[indexOfWorkout]);
    WorkoutDescription secondWorkout = WorkoutDescription(
        name: namesForWorkout[indexOfWorkout],
        description: 'Fullbody',
        duration: durationsForSecondWorkout[indexOfWorkout],
        exercises: excercisesForSecondWorkout[indexOfWorkout]);
    WorkoutDescription thirdWorkout = WorkoutDescription(
        name: namesForWorkout[indexOfWorkout],
        description: 'Fullbody',
        duration: durationsForThirdWorkout[indexOfWorkout],
        exercises: excercisesForThirdWorkout[indexOfWorkout]);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    _showPopup(context, firstWorkout);
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 190,
                        width: 328,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          'lib/assets/workout1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 328,
                        height: 190,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0x00FFFFFF),
                              Color(0x30868686),
                              Color(0x86040404),
                              Color(0xCC000000),
                            ],
                            stops: [0.18, 0.36, 0.45, 0.62],
                          ),
                        ),
                      ),
                      Positioned(
                          right: 14,
                          top: 14,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 12),
                                    Text(
                                      firstWorkout.name,
                                      style: GoogleFonts.getFont(
                                        'Merriweather Sans',
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      firstWorkout.duration.toString() + ' min',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20)),
                                      ),
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.only(
                                          top: 7,
                                          bottom: 7,
                                          right: 11,
                                          left: 11),
                                      child: Text(
                                        firstWorkout.description,
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ))
            ],
          ),
          SizedBox(height: 26),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    _showPopup(context, secondWorkout);
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 190,
                        width: 328,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          'lib/assets/workout2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 328,
                        height: 190,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0x00FFFFFF),
                              Color(0x30868686),
                              Color(0x86040404),
                              Color(0xCC000000),
                            ],
                            stops: [0.18, 0.36, 0.45, 0.62],
                          ),
                        ),
                      ),
                      Positioned(
                          right: 14,
                          top: 14,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 12),
                                    Text(
                                      secondWorkout.name,
                                      style: GoogleFonts.getFont(
                                        'Merriweather Sans',
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      secondWorkout.duration.toString() + ' min',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20)),
                                      ),
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.only(
                                          top: 7,
                                          bottom: 7,
                                          right: 11,
                                          left: 11),
                                      child: Text(
                                        secondWorkout.description,
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ))
            ],
          ),
          SizedBox(height: 26),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    _showPopup(context, thirdWorkout);
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 190,
                        width: 328,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          'lib/assets/workout3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 328,
                        height: 190,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0x00FFFFFF),
                              Color(0x30868686),
                              Color(0x86040404),
                              Color(0xCC000000),
                            ],
                            stops: [0.18, 0.36, 0.45, 0.62],
                          ),
                        ),
                      ),
                      Positioned(
                          right: 14,
                          top: 14,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 12),
                                    Text(
                                      thirdWorkout.name,
                                      style: GoogleFonts.getFont(
                                        'Merriweather Sans',
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      thirdWorkout.duration.toString() + ' min',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20)),
                                      ),
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.only(
                                          top: 7,
                                          bottom: 7,
                                          right: 11,
                                          left: 11),
                                      child: Text(
                                        thirdWorkout.description,
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ))
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
    );
  }
}
// a class to store name of workout what its for and how long it takes and exercises inside it
class WorkoutDescription{
  String name;
  String description;
  int duration;
  List<String> exercises;
  WorkoutDescription({required this.name, required this.description, required this.duration, required this.exercises});
}
