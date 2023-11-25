import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return SingleChildScrollView(
        child: Container(
          width: 360,
          height: 1067,
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
                  top: 1007,
                  child: Container(
                    width: 360,
                    height: 60,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFEBEBEB),
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 25,
                          top: 11,
                          child: Image.network(
                            'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2Fcf341eb51cc593db7bd9035d2d3714ca.png',
                            width: 38,
                            height: 38,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Positioned(
                          left: 33,
                          top: 19,
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2Fe27e573f7c426a883737ddbd3a813bc6d18e2da8profile-user%201.png?alt=media&token=f52b395e-5e9b-486e-b2ce-e840fa9a73ee',
                            width: 22,
                            height: 22,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 173,
                          top: 19,
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F20068b16c4d117383fb9a5aef4dd9a5d7d17e06ahome%20(3)%201.png?alt=media&token=6d75f9ee-5a39-4c49-a8cd-c26a2952c58e',
                            width: 22,
                            height: 22,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 99,
                          top: 19,
                          child: Container(
                            width: 22,
                            height: 22,
                            clipBehavior: Clip.hardEdge,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F5a3ba27b436a8794ab54e3afde184e7b8fd01606dumbbell%201.png?alt=media&token=5650edf6-02db-4a86-ab0f-86becb224840',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F5a3ba27b436a8794ab54e3afde184e7b8fd01606dumbbell%201.png?alt=media&token=5650edf6-02db-4a86-ab0f-86becb224840',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 247,
                          top: 19,
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F4303a7095b4f6a0708b9095f63e78d00a2442711lunch%20(1)%201.png?alt=media&token=6f694f6f-2034-4ae1-9952-9fbb8f534873',
                            width: 22,
                            height: 22,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 313,
                          top: 19,
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F55cb27731da9b7a2738e74a39da994ad352b9b35menu%20(1)%201.png?alt=media&token=3e73b059-14d5-45a5-8c5e-2198c9cdbfda',
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
                  left: 0,
                  top: 0,
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F9c81d2e2342194447a464490d5127703.png',
                    width: 360,
                    height: 121,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 110,
                  top: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    clipBehavior: Clip.hardEdge,
                    child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2Fb1be28d46eda187a995279ac6451d1cdb3a7127fEllipse%2017.png?alt=media&token=8c730477-8152-4e71-8859-89bdcc53e1c4',
                      width: 140,
                      height: 140,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 98,
                  top: 199,
                  child: Text(
                    'Kaidarova Karina',
                    style: GoogleFonts.getFont(
                      'Merriweather Sans',
                      color: const Color(0xFF343434),
                      fontSize: 20,
                    ),
                  ),
                ),
                Positioned(
                  left: 111,
                  top: 224,
                  child: Text(
                    '5 days until your next period',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: const Color(0xFFAFAFAF),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 315,
                  top: 30,
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F73d645ac9242f36ea2e9e2bc239d0343b523be83settings%201.png?alt=media&token=354ef17b-af22-4dd9-aba6-05466278bb73',
                    width: 20,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 265,
                  child: Container(
                    width: 312,
                    height: 175,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x28000000),
                          spreadRadius: 1,
                          offset: Offset(2, 2),
                          blurRadius: 7,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 281,
                  child: Text(
                    'My cycle',
                    style: GoogleFonts.getFont(
                      'Merriweather Sans',
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 316,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      style: GoogleFonts.getFont(
                        'Inter',
                        color: const Color(0xFFAFAFAF),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      children: const [
                        TextSpan(text: 'You are on day 12 of 28 in '),
                        TextSpan(
                          text: 'Follicular',
                          style: TextStyle(
                            color: Color(0xFFF62457),
                          ),
                        ),
                        TextSpan(text: ' phase')
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 49,
                  top: 337,
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F2f23f2273924cc13a41bc9c48350b5e8.png',
                    width: 61,
                    height: 7,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 117,
                  top: 337,
                  child: Container(
                    width: 61,
                    height: 7,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFF003D),
                    ),
                  ),
                ),
                Positioned(
                  left: 185,
                  top: 337,
                  child: Container(
                    width: 61,
                    height: 7,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF1C3),
                    ),
                  ),
                ),
                Positioned(
                  left: 252,
                  top: 337,
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2Fd2070017331d1352b97b1ae94cd78713.png',
                    width: 61,
                    height: 7,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 368,
                  child: Text(
                    'Period length:',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: const Color(0xFF3D3D3D),
                      fontSize: 14,
                    ),
                  ),
                ),
                Positioned(
                  left: 280,
                  top: 371,
                  child: Text(
                    '5 days',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: const Color(0xFF6B6B6B),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 397,
                  child: Text(
                    'Cycle duration:',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: const Color(0xFF3D3D3D),
                      fontSize: 14,
                    ),
                  ),
                ),
                Positioned(
                  left: 273,
                  top: 400,
                  child: Text(
                    '30 days',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: const Color(0xFF6B6B6B),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 468,
                  child: Container(
                    width: 310,
                    height: 175,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x28000000),
                          spreadRadius: 1,
                          offset: Offset(2, 2),
                          blurRadius: 7,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 72,
                  top: 612,
                  child: Text(
                    'Sept.',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: const Color(0xFF6B6B6B),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 165,
                  top: 612,
                  child: Text(
                    'Oct.',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: const Color(0xFF6B6B6B),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 258,
                  top: 612,
                  child: Text(
                    'Nov.',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: const Color(0xFF6B6B6B),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 46,
                  top: 484,
                  child: SizedBox(
                    width: 65,
                    child: Text(
                      'Weight',
                      style: GoogleFonts.getFont(
                        'Merriweather Sans',
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 46,
                  top: 513,
                  child: Text(
                    '55,6 kg',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 47,
                  top: 530,
                  child: SizedBox(
                    width: 40,
                    child: Text(
                      '01 Nov.',
                      style: GoogleFonts.getFont(
                        'Inter',
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 47,
                  top: 563,
                  child: Container(
                    width: 263,
                    height: 43,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 0,
                          top: -1,
                          child: Image.network(
                            'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F1a1fbbc27b722768eb9ae7fa7c40dd25.png',
                            width: 266,
                            height: 45,
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 671,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    clipBehavior: Clip.hardEdge,
                    child: Image.network(
                      'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F13759bf8c2ad282b5f5d1626dc8b920b.png',
                      width: 310,
                      height: 124,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  left: 46,
                  top: 686,
                  child: SizedBox(
                    width: 61,
                    height: 26,
                    child: Text(
                      'BMI',
                      style: GoogleFonts.getFont(
                        'Merriweather Sans',
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 109,
                  top: 694,
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2Fced53fe00b7d36fb516c5dbe69b3b235c1fc6642chart-simple-horizontal%201.png?alt=media&token=449fd436-87f5-44c0-9c5b-fe0c0d524c8e',
                    width: 20,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 150,
                  top: 751,
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
                  left: 199,
                  top: 751,
                  child: Container(
                    width: 4,
                    height: 14,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      color: Color(0xFF3DFF73),
                    ),
                  ),
                ),
                Positioned(
                  left: 46,
                  top: 721,
                  child: SizedBox(
                    width: 108,
                    height: 45,
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
                ),
                Positioned(
                  left: 149,
                  top: 728,
                  child: Text(
                    'Normal weight',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 822,
                  child: Text(
                    'Your aim ',
                    style: GoogleFonts.getFont(
                      'Merriweather Sans',
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Positioned(
                  left: 25,
                  top: 858,
                  child: SizedBox(
                    width: 90,
                    height: 28,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 91,
                            height: 28,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF62457),
                              border: Border.all(
                                color: const Color(0xFFF62457),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 5,
                          child: SizedBox(
                            height: 17,
                            child: Text(
                              'Lose weight',
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
                  left: 245,
                  top: 858,
                  child: SizedBox(
                    width: 90,
                    height: 28,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 91,
                            height: 28,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF7F7F7F),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 5,
                          child: SizedBox(
                            width: 72,
                            height: 17,
                            child: Text(
                              'Gain weight',
                              style: GoogleFonts.getFont(
                                'Inter',
                                color: const Color(0xFF7F7F7F),
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
                  left: 123,
                  top: 858,
                  child: SizedBox(
                    width: 112,
                    height: 28,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 113,
                            height: 28,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF7F7F7F),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 5,
                          child: SizedBox(
                            height: 17,
                            child: Text(
                              'Maintain weight',
                              style: GoogleFonts.getFont(
                                'Inter',
                                color: const Color(0xFF7F7F7F),
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
                  top: 913,
                  child: SizedBox(
                    width: 184,
                    child: Text(
                      'Workouts per week',
                      style: GoogleFonts.getFont(
                        'Merriweather Sans',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 26,
                  top: 971,
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F4d58a592a7e0772e7b73892f04c3e754.png',
                    width: 285,
                    height: 0,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 322,
                  top: 961,
                  child: SizedBox(
                    width: 14,
                    child: Text(
                      '4',
                      style: GoogleFonts.getFont(
                        'Inter',
                        color: const Color(0xFF6B6B6B),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}