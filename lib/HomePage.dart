import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.only(right: 20, left: 50),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 85, 85, 85),
                                shape: BoxShape.circle),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi, Karina!',
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
                      )
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 50),
                      child: TextButton(
                        onPressed: () {},
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2Fa68a37830c20965bdade44300098c0227c421a26settings-sliders(1)%201.png?alt=media&token=0ed6bbab-1758-45d1-8905-286881ab5f83',
                          width: 20,
                          height: 20,
                          fit: BoxFit.cover,
                        ),
                      ))
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
                                Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2Fd5545000507e30212fd1fcc7fd924cefb1776700image%201.png?alt=media&token=86c6364f-22a2-4982-a615-0ffa36025d61',
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
                                  width: 105,
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
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Check out your workout plan',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 47,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                        padding: EdgeInsets.all(0)),
                                    onPressed: () {},
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xFFF62457),
                                                Color(0xFFFFB199)
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Image.network(
                                            'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F80519a6dc06abe2034fbc195b50260a5.png',
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
                          ],
                        ),
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
                      headerStyle: HeaderStyle(
                          formatButtonVisible: false, titleCentered: true),
                      availableGestures: AvailableGestures.all,
                      selectedDayPredicate: (day) => isSameDay(day, today),
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: today,
                      onDaySelected: _onDaySelected,
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
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFF62457),
                          Color.fromARGB(255, 255, 152, 152)
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'It is Follicular Phase now!',
                          style: GoogleFonts.getFont(
                            'Merriweather Sans',
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'The follicular phase starts on the first day of your period and lasts for 13 to 14 days, ending in ovulation. The pituitary gland in the brain releases a hormone to stimulate the production of follicles on the surface of an ovary',
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
                          children: [
                            Container(
                                width: 280,
                                margin: EdgeInsets.only(top: 29),
                                child: TextButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                          Color.fromARGB(255, 255, 255, 255))),
                                  onPressed: () {},
                                  child: Text(
                                    'Read more',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: Color.fromRGBO(247, 37, 87, 1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ))
                          ],
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
                                    '01 nov',
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
                                        onPressed: () {},
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
                                              child: Image.network(
                                                'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2Faa167da7cd1c8efa241e0d46017b8f51.png',
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
                                      '55,6kg',
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
                                        onPressed: () {},
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
                                              child: Image.network(
                                                'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F80519a6dc06abe2034fbc195b50260a5.png',
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
                    padding: EdgeInsets.only(top: 15, left: 20, bottom: 19),
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
                            '1853 Cal',
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
                                    width: 105,
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
