import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Container(
        width: 360,
        height: 1233,
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
                left: 40,
                top: 476,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F82d546791e58488fc4c4b5d37578aabf.png',
                    width: 118,
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 368,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F5004734878cb90ad520717b00cb64e23.png',
                    width: 74,
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 512,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F363b65dc35817c7ee3e8b768a08993be.png',
                    width: 118,
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 171,
                top: 477,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F83350d03e6cc5a092a6723c189c0e5d2.png',
                    width: 152,
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 126,
                top: 440,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F242ae55ae9444f0d3161f034e32a46b7.png',
                    width: 197,
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 440,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F5004734878cb90ad520717b00cb64e23.png',
                    width: 74,
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 404,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F368a282043e1cfca1581e882f0291d8d.png',
                    width: 283,
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 82,
                top: 440,
                child: Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: const Color(0xFFF62457),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 126,
                top: 476,
                child: Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: const Color(0xFFF62457),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 211,
                top: 440,
                child: Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: const Color(0xFFF62457),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 171,
                top: 441,
                child: Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: const Color(0xFFF62457),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 126,
                top: 368,
                child: Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF9595),
                    border: Border.all(
                      width: 4,
                      color: const Color(0xFFF62457),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 249,
                top: 368,
                child: Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF9595),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 291,
                top: 368,
                child: Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF9595),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 171,
                top: 368,
                child: Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF9595),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 291,
                top: 512,
                child: Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFCDCD),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 171,
                top: 512,
                child: Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFCDCD),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 211,
                top: 512,
                child: Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFCDCD),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 249,
                top: 512,
                child: Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFCDCD),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 211,
                top: 368,
                child: Container(
                  width: 32,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF9595),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 328,
                child: Container(
                  width: 312,
                  height: 264,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        spreadRadius: 0,
                        offset: Offset(4, 4),
                        blurRadius: 4,
                      )
                    ],
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 16,
                        top: 16,
                        child: Container(
                          width: 29,
                          height: 195,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: -1,
                                top: -1,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    'MON',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 27,
                                child: Text(
                                  '1',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9,
                                top: 63,
                                child: Text(
                                  '8',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 99,
                                child: Text(
                                  '15',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 4,
                                top: 135,
                                child: Text(
                                  '22',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 4,
                                top: 171,
                                child: Text(
                                  '29',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 63,
                        top: 16,
                        child: Container(
                          width: 24,
                          height: 195,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: -1,
                                top: -1,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    'TUE',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 27,
                                child: Text(
                                  '2',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 63,
                                child: Text(
                                  '9',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 3,
                                top: 99,
                                child: Text(
                                  '16',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 1,
                                top: 135,
                                child: Text(
                                  '23',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: const Color(0xFFF62457),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 2,
                                top: 171,
                                child: Text(
                                  '30',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 104,
                        top: 16,
                        child: Container(
                          width: 28,
                          height: 195,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: -1,
                                top: -1,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    'WED',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 8,
                                top: 27,
                                child: Text(
                                  '3',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.white,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 63,
                                child: Text(
                                  '10',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 99,
                                child: Text(
                                  '17',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 4,
                                top: 135,
                                child: Text(
                                  '24',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 171,
                                child: Text(
                                  '31',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 150,
                        top: 16,
                        child: Container(
                          width: 26,
                          height: 195,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: -1,
                                top: -1,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    'THU',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 27,
                                child: Text(
                                  '4',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.white,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 64,
                                child: Text(
                                  '11',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 4,
                                top: 100,
                                child: Text(
                                  '18',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 3,
                                top: 137,
                                child: Text(
                                  '25',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9,
                                top: 173,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    '1',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: Colors.black,
                                      fontSize: 14,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 193,
                        top: 16,
                        child: Container(
                          width: 19,
                          height: 195,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: 0,
                                top: -1,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    'FRI',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 4,
                                top: 27,
                                child: Text(
                                  '5',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.white,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 64,
                                child: Text(
                                  '12',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 100,
                                child: Text(
                                  '19',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -1,
                                top: 137,
                                child: Text(
                                  '26',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 4,
                                top: 173,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    '2',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: Colors.black,
                                      fontSize: 14,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 230,
                        top: 16,
                        child: Container(
                          width: 23,
                          height: 195,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: -1,
                                top: -1,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    'SAT',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 27,
                                child: Text(
                                  '6',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.white,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 2,
                                top: 64,
                                child: Text(
                                  '13',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 1,
                                top: 100,
                                child: Text(
                                  '20',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 2,
                                top: 137,
                                child: Text(
                                  '27',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 173,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    '3',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: Colors.black,
                                      fontSize: 14,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 270,
                        top: 16,
                        child: Container(
                          width: 26,
                          height: 195,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: -1,
                                top: -1,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    'SUN',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 8,
                                top: 27,
                                child: Text(
                                  '7',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.white,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 4,
                                top: 64,
                                child: Text(
                                  '14',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 4,
                                top: 100,
                                child: Text(
                                  '21',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 3,
                                top: 137,
                                child: Text(
                                  '28',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 8,
                                top: 173,
                                child: Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    '4',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: Colors.black,
                                      fontSize: 14,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 231,
                        child: Container(
                          width: 280,
                          height: 17,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: 0,
                                top: 5,
                                child: Image.network(
                                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F431cf48b6937f82c28dec15e7ba409a0.png',
                                  width: 7,
                                  height: 7,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                left: 90,
                                top: -1,
                                child: Text(
                                  'February 2021',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 273,
                                top: 5,
                                child: Image.network(
                                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F5e93339f9355da054974ad86c1999a33.png',
                                  width: 7,
                                  height: 7,
                                  fit: BoxFit.contain,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 92,
                top: 287,
                child: Text(
                  'Cycle calendar',
                  style: GoogleFonts.getFont(
                    'Merriweather Sans',
                    color: const Color(0xFFF62457),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                left: 264,
                top: 287,
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2Fb4b385de90e3af0579d324de92c706facf37dde5interrogation%201.png?alt=media&token=ac2ab57b-e2b8-4322-95ac-a1c6b1a29bc2',
                  width: 10,
                  height: 10,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 24,
                top: 121,
                child: Container(
                  width: 312,
                  height: 128,
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
                left: 47,
                top: 137,
                child: Text(
                  'You are doing great!',
                  style: GoogleFonts.getFont(
                    'Merriweather Sans',
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 163,
                child: Text(
                  'Progress this week',
                  style: GoogleFonts.getFont(
                    'Inter',
                    color: const Color(0xFFF62457),
                    fontSize: 14,
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 195,
                child: Container(
                  width: 264,
                  height: 7,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEBEBEB),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 195,
                child: Container(
                  width: 105,
                  height: 7,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF62457),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 215,
                child: Text(
                  'Check out your workout plan',
                  style: GoogleFonts.getFont(
                    'Inter',
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 288,
                top: 212,
                child: Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [Color(0xFFF62457), Color(0xFFFFB199)],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 297,
                top: 219,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F80519a6dc06abe2034fbc195b50260a5.png',
                  width: 6,
                  height: 10,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 255,
                top: 128,
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2Fd5545000507e30212fd1fcc7fd924cefb1776700image%201.png?alt=media&token=86c6364f-22a2-4982-a615-0ffa36025d61',
                  width: 57,
                  height: 57,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 23,
                top: 34,
                child: Container(
                  width: 50,
                  height: 50,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              Positioned(
                left: 85,
                top: 33,
                child: Text(
                  'Hi, Karina!',
                  style: GoogleFonts.getFont(
                    'Merriweather Sans',
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              Positioned(
                left: 85,
                top: 64,
                child: Text(
                  'Ready for training?',
                  style: GoogleFonts.getFont(
                    'Inter',
                    color: const Color(0xFFAFAFAF),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 315,
                top: 34,
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2Fa68a37830c20965bdade44300098c0227c421a26settings-sliders(1)%201.png?alt=media&token=0ed6bbab-1758-45d1-8905-286881ab5f83',
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 24,
                top: 621,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2F212f9abc6e8e95ab5686313dea26305c.png',
                    width: 312,
                    height: 220,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 641,
                child: SizedBox(
                  width: 248,
                  height: 26,
                  child: Text(
                    'It is Follicular Phase now!',
                    style: GoogleFonts.getFont(
                      'Merriweather Sans',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 673,
                child: SizedBox(
                  width: 266,
                  height: 88,
                  child: Text(
                    'The follicular phase starts on the first day of your period and lasts for 13 to 14 days, ending in ovulation. The pituitary gland in the brain releases a hormone to stimulate the production of follicles on the surface of an ovary',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 45,
                top: 789,
                child: Container(
                  width: 268,
                  height: 32,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Positioned(
                left: 143,
                top: 796,
                child: SizedBox(
                  width: 65,
                  height: 16,
                  child: Text(
                    'Read more',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: const Color(0xFFF62457),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 1173,
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
                        left: 161,
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
                        left: 169,
                        top: 19,
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F1eba1fc997fc8767984e85a9a68c66de98394f5ehome%20(2)%201.png?alt=media&token=8a952319-a5e5-43b8-83e7-685874e60df1',
                          width: 22,
                          height: 22,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: 95,
                        top: 19,
                        child: Container(
                          width: 22,
                          height: 22,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F5a3ba27b436a8794ab54e3afde184e7b8fd01606dumbbell%201.png?alt=media&token=a386eb47-ffc5-4618-8ab4-b24d3a276445',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F5a3ba27b436a8794ab54e3afde184e7b8fd01606dumbbell%201.png?alt=media&token=a386eb47-ffc5-4618-8ab4-b24d3a276445',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 29,
                        top: 19,
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F4303a7095b4f6a0708b9095f63e78d00a2442711lunch%20(1)%201.png?alt=media&token=25626b6f-050d-45f4-81e5-23984e39e357',
                          width: 22,
                          height: 22,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: 309,
                        top: 19,
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F55cb27731da9b7a2738e74a39da994ad352b9b35menu%20(1)%201.png?alt=media&token=f4d146e7-d341-4998-821b-3b5169539f6e',
                          width: 22,
                          height: 22,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: 243,
                        top: 19,
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2Fns82maDPujTwEb3FbMMb%2F40528fc32448f91f005b87c047c2659f82ebeaccprofile-user%20(1)%201.png?alt=media&token=8bab16cf-dc1a-4b13-9c53-86b9836efc43',
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
                left: 278,
                top: 943,
                child: Text(
                  '+',
                  style: GoogleFonts.getFont(
                    'Inter',
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 90,
                top: 944,
                child: Text(
                  '-',
                  style: GoogleFonts.getFont(
                    'Inter',
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 869,
                child: Container(
                  width: 312,
                  height: 120,
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
                left: 151,
                top: 885,
                child: SizedBox(
                  width: 58,
                  height: 32,
                  child: Text(
                    'Weight',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 922,
                child: SizedBox(
                  width: 111,
                  child: Text(
                    '55,6 kg',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 161,
                top: 905,
                child: SizedBox(
                  width: 38,
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
                left: 276,
                top: 926,
                child: Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [Color(0xFFF62457), Color(0xFFFFB199)],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 285,
                top: 933,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2Fa7bebc1390b65fce2b523cb9e93ed0c2.png',
                  width: 6,
                  height: 9,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 60,
                top: 926,
                child: Container(
                  width: 24,
                  height: 24,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      colors: [Color(0xFFF62457), Color(0xFFFFB199)],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 67,
                top: 932,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2Faa167da7cd1c8efa241e0d46017b8f51.png',
                  width: 8,
                  height: 11,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 25,
                top: 1010,
                child: Container(
                  width: 311,
                  height: 117,
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
                left: 44,
                top: 1024,
                child: SizedBox(
                  width: 180,
                  height: 22,
                  child: Text(
                    'Daily Calorie Intake',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 1056,
                child: SizedBox(
                  width: 119,
                  height: 32,
                  child: Text(
                    '1875 Cal',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 1101,
                child: Container(
                  width: 272,
                  height: 7,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEBEBEB),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Positioned(
                left: 44,
                top: 1101,
                child: Container(
                  width: 241,
                  height: 7,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF62457),
                    borderRadius: BorderRadius.circular(5),
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