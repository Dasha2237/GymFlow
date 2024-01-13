import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Workout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
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
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 12),
                                    Text(
                                      'Weight training',
                                      style: GoogleFonts.getFont(
                                        'Merriweather Sans',
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '45 min',
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
                                        'Upperbody',
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
                  onPressed: () {},
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
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 12),
                                    Text(
                                      'Weight training',
                                      style: GoogleFonts.getFont(
                                        'Merriweather Sans',
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '45 min',
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
                                        'Fullbody',
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
                  onPressed: () {},
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
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                    Text(
                                      'Cardio',
                                      style: GoogleFonts.getFont(
                                        'Merriweather Sans',
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '55 min',
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
                                        'Fullbody',
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
