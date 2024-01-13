import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
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
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: const Color(0xFFF62457),
                      ),
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
                      hintText: 'Enter your height',
                      hintStyle: TextStyle(
                          color: const Color(0xFFF62457), fontSize: 12),
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
                      hintText: 'Enter your weight',
                      hintStyle: TextStyle(
                          color: const Color(0xFFF62457), fontSize: 12),
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
                      hintText: 'Enter your weight',
                      hintStyle: TextStyle(
                          color: const Color(0xFFF62457), fontSize: 12),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate will return true if the form is valid, or false if
                        // the form is invalid.
                        if (_formKey.currentState!.validate()) {}
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
    );
  }
}
