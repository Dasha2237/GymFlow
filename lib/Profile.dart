import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

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
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double bmiLeft = 89;
    Color colorText = const Color(0xFF7F7F7F);
    Color colorBorder = const Color(0xFF7F7F7F);
    Color colorBack = Colors.white;
    const int weightCount = 55;

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
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2Fb1be28d46eda187a995279ac6451d1cdb3a7127fEllipse%2017.png?alt=media&token=8c730477-8152-4e71-8859-89bdcc53e1c4',
                                      fit: BoxFit.cover,
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Kaidarova Karina!',
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
                                  '5 days until your next period',
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
                                  text: 'You are on day 12 of 28 in ',
                                  style: GoogleFonts.getFont(
                                    'Merriweather Sans',
                                    color: Color.fromRGBO(176, 176, 176, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  children: [
                                TextSpan(
                                    text: 'Follicular',
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
                            '5 days',
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
                            '30 days',
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
                          weightCount.toString() + 'kg',
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
                          '1 Nov.',
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
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2Fced53fe00b7d36fb516c5dbe69b3b235c1fc6642chart-simple-horizontal%201.png?alt=media&token=449fd436-87f5-44c0-9c5b-fe0c0d524c8e',
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
                            '18.9',
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
