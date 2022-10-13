// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors

import 'package:atlass_app/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  Color primaryColor = const Color(0xff18203d);
  Color secondaryColor = const Color(0xff232c51);
  Color logoGreen = const Color(0xff25bcbb);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        top: true,
        child: Container(
          child: Column(
            children: <Widget>[
              //We take the image from the assets
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Image.asset(
                  'assets/b3.png',
                  height: 350,
                  width: 400,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              //Texts and Styling of them
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Welcome to ',
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 34,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        'ATLASS.  ',
                        style: GoogleFonts.overpass(
                            textStyle: const TextStyle(
                          color: Color(0xFFB9C1FF),
                          fontSize: 50,
                          fontWeight: FontWeight.w500,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'A one-stop Data Monitoring Portal for Students',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.acme(
                      textStyle: const TextStyle(
                          color: Color(0xFFF0DCDC), fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 9),
              TheButtons(
                text: "GET STARTED",
                color: const Color(0xFF886afc),
                textColor: Colors.black87,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TheButtons extends StatelessWidget {
  final String text;
  final Color color, textColor;

  const TheButtons(
      {Key? key,
      required this.text,
      required this.color,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: FlatButton.icon(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context) {
              return LoginScreen();
            }));
          },
          color: color,
          label: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          icon: const Icon(Icons.arrow_forward_outlined),
        ),
      ),
    );
  }
}
