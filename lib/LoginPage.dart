import 'package:app_sport/dto/database_manager.dart';
import 'package:app_sport/dto/health_data.dart';
import 'package:app_sport/dto/period_date.dart';
import 'package:app_sport/dto/profile_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'package:image_input/image_input.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
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

class _LoginPageState extends State<LoginPage> {
  double weightCount = 55.0;
  double _currentSliderValue = 1;
  Color colorText = const Color(0xFF7F7F7F);
  Color colorBorder = const Color(0xFF7F7F7F);
  Color colorBack = Colors.white;
  Color colorPressed = const Color(0xFFF62457);
  bool loseWeightPressed = false;
  bool maintainWeightPressed = false;
  bool gainWeightPressed = false;
  XFile? savedImage;
  String pathToImage = '';
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController periodLengthController = TextEditingController();
  TextEditingController cycleLengthController = TextEditingController();
  TextEditingController workoutsPerWeekController = TextEditingController();
  TextEditingController lastDayOfMenstruationController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  DateTime? birthDateSave;
  DateTime? lastPeriodDateSave;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  DateTime? isDateValid(String date) {
    if (date.length != 10) {
      return null;
    }

    // Разделить строку на три части: день, месяц и год.
    final List<String> parts = date.split('/');

    // Проверить, является ли каждая часть числом.
    if (int.tryParse(parts[0]) != null && int.tryParse(parts[1]) != null && int.tryParse(parts[2]) != null) {
      // Преобразовать каждую часть в целое число.
      final int day = int.parse(parts[0]);
      final int month = int.parse(parts[1]);
      final int year = int.parse(parts[2]);

      // Проверить, является ли дата допустимой.
      if (1 <= day && day <= 31 &&
          1 <= month && month <= 12 &&
          1900 <= year && year <= DateTime.now().year) {
        return DateTime(year, month, day);
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
          child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              'GYMFLOW',
              style: GoogleFonts.getFont(
                'Merriweather Sans',
                color: Color(0xFFF62457),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProfileAvatar(
                    radius: 100,
                    allowEdit: true,
                    backgroundColor: Colors.grey,
                    addImageIcon: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.add_a_photo),
                      ),
                    ),
                    removeImageIcon: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.close),
                      ),
                    ),
                    onImageChanged: (XFile? image) {
                      //save image to cloud and get the url
                      //or
                      //save image to local storage and get the path
                      if (image != null) {
                        setState(() {
                          savedImage = image;
                          pathToImage = image.path;
                        });
                      }
                    },
                    image: savedImage,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      hintText: 'Enter your first name',
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                    controller: firstNameController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      hintText: 'Enter your last name',
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                    controller: lastNameController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      hintText: 'Enter your height (cm)',
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                    controller: heightController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      hintText: 'Enter your weight (kg)',
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                    controller: weightController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      hintText: ' DD/MM/YYYY Date of birth',
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                    controller: birthDateController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      if (isDateValid(value) == null) {
                        return 'Invalid format';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      hintText: 'DD/MM/YYYY first day of the last period',
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                    controller: lastDayOfMenstruationController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      if (isDateValid(value) == null) {
                        return 'Invalid format';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      hintText: 'Duration of your period (days)',
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                    controller: periodLengthController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                        const BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(
                          color: Color(0xFFF62457),
                          width: 2.0,
                        ),
                      ),
                      hintText: 'Duration of your cycle (days)',
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                    controller: cycleLengthController,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Workouts per week',
                    style: GoogleFonts.getFont(
                      'Merriweather Sans',
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SliderTheme(
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
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Your aim',
                    style: GoogleFonts.getFont(
                      'Merriweather Sans',
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
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
                            loseWeightPressed = true;
                            maintainWeightPressed = false;
                            gainWeightPressed = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: colorBorder,
                            ),
                            color: loseWeightPressed ? colorPressed : colorBack,
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
                              color: loseWeightPressed ? Colors.white : colorText,
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
                            loseWeightPressed = false;
                            maintainWeightPressed = true;
                            gainWeightPressed = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: colorBorder,
                            ),
                            color: maintainWeightPressed ? colorPressed : colorBack,
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
                              color: maintainWeightPressed ? Colors.white : colorText,
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
                            loseWeightPressed = false;
                            maintainWeightPressed = false;
                            gainWeightPressed = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: colorBorder,
                            ),
                            color: gainWeightPressed ? colorPressed : colorBack,
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
                              color: gainWeightPressed ? Colors.white : colorText,
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate will return true if the form is valid, or false if
                        // the form is invalid.
                        if (_formKey.currentState!.validate() && pathToImage != '') {
                          ProfileData profileData = ProfileData(
                              name: firstNameController.text,
                              surname: lastNameController.text,
                              weight: double.parse(weightController.text),
                              height: double.parse(heightController.text),
                              imagePath: pathToImage,
                              periodLength: int.parse(periodLengthController.text),
                              cycleLength: int.parse(cycleLengthController.text),
                              aim: loseWeightPressed ? 'Lose weight' : maintainWeightPressed ? 'Maintain weight' : 'Gain weight',
                              workoutsPerWeek: _currentSliderValue.toInt(),
                              birthDate: isDateValid(birthDateController.text)!,
                              lastPeriodDate: isDateValid(lastDayOfMenstruationController.text)!);
                          DatabaseManager.saveProfileData(profileData);
                          HealthData healthData = HealthData(
                              date: DateTime.now(),
                              weight: double.parse(weightController.text));
                          DatabaseManager.saveHealthData(healthData);
                          PeriodDate periodDate = PeriodDate(date: isDateValid(lastDayOfMenstruationController.text)!);
                          DatabaseManager.savePeriodDate(periodDate);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyHomePage(title: 'Demo')),
                          );
                        }
                      },
                      child: Text(
                        'Submit',
                        style: GoogleFonts.getFont(
                          'Inter',
                          color: Color(0xFFF62457),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    ));
  }
}
