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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
                      hintText: 'Enter your full name',
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
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
                  DOBInputField(
                    inputDecoration: const InputDecoration(
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
                      hintText: 'Enter your weight',
                      hintStyle: TextStyle(
                          color: const Color(0xFFF62457), fontSize: 12),
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    showLabel: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    fieldLabelText: "Date of birth",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DOBInputField(
                    inputDecoration: const InputDecoration(
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
                      hintText: 'Enter your weight',
                      hintStyle: TextStyle(
                          color: const Color(0xFFF62457), fontSize: 12),
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    showLabel: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    fieldLabelText: "Date of the last menstruation",
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
                      hintText: 'Duration of your menstruation',
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
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
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: colorBorder,
                            ),
                            color: colorBack,
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
                              color: colorText,
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
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: colorBorder,
                            ),
                            color: colorBack,
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
                              color: colorText,
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
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: colorBorder,
                            ),
                            color: colorBack,
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
                              color: colorText,
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
                      String? tempPath = image?.path;
                      print(tempPath);
                    },
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
                        if (_formKey.currentState!.validate()) {
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