import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232c51),
      appBar: AppBar(
        title: Text(
          "MY ACTIVITIES",
          style: GoogleFonts.ubuntu(
            textStyle: const TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 198, 203, 221)),
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xff18203d),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 198, 203, 221),
          ),
        ),
      ),
    );
  }
}
