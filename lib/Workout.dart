import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Workout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
        child: Container(
      width: 360,
      height: 800,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x3F000000),
            spreadRadius: 2,
            offset: Offset(2, 4),
            blurRadius: 10,
          )
        ],
      ),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0,
              top: 740,
              child: Container(
                width: 360,
                height: 60,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 169,
                      top: 19,
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F20068b16c4d117383fb9a5aef4dd9a5d7d17e06ahome%20(3)%201.png?alt=media&token=9623f241-f3e5-4ae1-93df-a909cf896092',
                        width: 22,
                        height: 22,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 239,
                      top: 19,
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F4303a7095b4f6a0708b9095f63e78d00a2442711lunch%20(1)%201.png?alt=media&token=0f6bb68c-710c-471a-8a79-c421a6cbd400',
                        width: 22,
                        height: 22,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 309,
                      top: 19,
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F55cb27731da9b7a2738e74a39da994ad352b9b35menu%20(1)%201.png?alt=media&token=3bffd749-42d0-4617-9fba-49bd4682f77f',
                        width: 22,
                        height: 22,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 21,
                      top: 19,
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F40528fc32448f91f005b87c047c2659f82ebeaccprofile-user%20(1)%202.png?alt=media&token=21fcf239-3fbd-49d6-ba4e-dd613bedb22e',
                        width: 22,
                        height: 22,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 87,
                      top: 11,
                      child: Container(
                        width: 38,
                        height: 38,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF62457),
                          borderRadius: BorderRadius.circular(19),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 95,
                      top: 19,
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2Ffc2415223148db01c4c59821c1d5e5be4b926d50dumbbell%20(1)%201.png?alt=media&token=75daec33-922d-4cdb-b7c7-2736c682053a',
                        width: 22,
                        height: 22,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 316,
              top: 34,
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2Fa68a37830c20965bdade44300098c0227c421a26settings-sliders(1)%201.png?alt=media&token=d20e7094-2068-4731-a785-3e3c308a1c73',
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 24,
              top: 520,
              child: Container(
                width: 312,
                height: 190,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F7325b802209d1271e65bfebf0b0bf96d101e067bimage%205.png?alt=media&token=423e4f3f-283c-4aef-b5d8-f6b6aee85bd3',
                        width: 312,
                        height: 190,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 312,
                        height: 190,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xCC000000),
                              Color(0x86040404),
                              Color(0x30868686),
                              Color(0x00FFFFFF)
                            ],
                            stops: [0.18, 0.36, 0.45, 0.62],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 266,
                      top: 13,
                      child: Container(
                        width: 30,
                        height: 30,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 268,
                      top: 15,
                      child: Container(
                        width: 26,
                        height: 26,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF62457),
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 275,
                      top: 22,
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2Fe68baf3c814d6f1872525a793e6142bba5137c91check%201.png?alt=media&token=b15946a4-e1c3-4147-9cff-4699d3cb47f1',
                        width: 12,
                        height: 12,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 247,
                      top: 95,
                      child: Container(
                        width: 50,
                        height: 28,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 257,
                      top: 100,
                      child: SizedBox(
                        width: 31,
                        height: 17,
                        child: Text(
                          'Core',
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 208,
                      top: 130,
                      child: Container(
                        width: 88,
                        height: 28,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 219,
                      top: 135,
                      child: SizedBox(
                        height: 17,
                        child: Text(
                          'Upperbody',
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 256,
                      top: 72,
                      child: Text(
                        '40 min',
                        style: GoogleFonts.getFont(
                          'Inter',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 241,
                      top: 54,
                      child: Text(
                        'Crossfit',
                        style: GoogleFonts.getFont(
                          'Merriweather Sans',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 24,
              top: 302,
              child: Container(
                width: 312,
                height: 192,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F216d96dffa0ff13454c5ff1989d656dc1f617b47image%203.png?alt=media&token=fb0d0eba-4b45-45e4-aa0c-c10ae5ce73c2',
                        width: 312,
                        height: 192,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 312,
                        height: 190,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xCC000000),
                              Color(0x86040404),
                              Color(0x30868686),
                              Color(0x00FFFFFF)
                            ],
                            stops: [0.18, 0.36, 0.45, 0.62],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 266,
                      top: 13,
                      child: Container(
                        width: 30,
                        height: 30,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 256,
                      top: 72,
                      child: Text(
                        '50 min',
                        style: GoogleFonts.getFont(
                          'Inter',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 191,
                      top: 54,
                      child: Text(
                        'Cardio training',
                        style: GoogleFonts.getFont(
                          'Merriweather Sans',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 226,
                      top: 95,
                      child: Container(
                        width: 70,
                        height: 28,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 236,
                      top: 100,
                      child: SizedBox(
                        width: 52,
                        height: 17,
                        child: Text(
                          'Fullbody',
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 24,
              top: 86,
              child: Container(
                width: 312,
                height: 190,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F86ebbb54cde6179737fed79eb22ea3e0f3189a96image%204.png?alt=media&token=6420b1e5-1ff0-4ba9-abd1-82e5de4a3730',
                        width: 312,
                        height: 190,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 312,
                        height: 190,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xCC000000),
                              Color(0x86040404),
                              Color(0x30868686),
                              Color(0x00FFFFFF)
                            ],
                            stops: [0.18, 0.36, 0.45, 0.62],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 266,
                      top: 13,
                      child: Container(
                        width: 30,
                        height: 30,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 226,
                      top: 95,
                      child: Container(
                        width: 70,
                        height: 28,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 236,
                      top: 100,
                      child: SizedBox(
                        width: 52,
                        height: 17,
                        child: Text(
                          'Fullbody',
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 256,
                      top: 72,
                      child: Text(
                        '45 min',
                        style: GoogleFonts.getFont(
                          'Inter',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 186,
                      top: 54,
                      child: Text(
                        'Weight training',
                        style: GoogleFonts.getFont(
                          'Merriweather Sans',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
