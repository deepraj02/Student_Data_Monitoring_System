import 'package:avatar_glow/avatar_glow.dart';
import 'package:extended_icon_button/extended_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late double height, thewidth;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    thewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MY PROFILE",
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: const Color(0xFF232c51),
              child: Column(
                children: [
                  Container(
                    height: height * 0.23,
                    //    width: thewidth * .7,
                    decoration: const BoxDecoration(
                      color: Color(0xff18203d),
                      /* image: DecorationImage(
                            image: AssetImage("assets/bg2.png"), fit: BoxFit.cover), */
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xAF151516),
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                        //BoxShadow
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text("My PROFILE",
                      style: GoogleFonts.ubuntu(
                        textStyle: const TextStyle(
                            fontSize: 20, color: Color(0xFFC6CBDD)),
                      )),
                  const Divider(
                    color: Colors.white,
                    endIndent: 110,
                    indent: 110,
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ExtendedIconButtons(
                      onPressed: () {},
                      buttonColor: const Color(0xFFC6CBDD),
                      text: "Personal Details",
                      icon: (Icons.arrow_forward_ios),
                      height: MediaQuery.of(context).size.height * 0.074,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ExtendedIconButtons(
                      onPressed: () {},
                      buttonColor: const Color(0xFFC6CBDD),
                      text: "Parent/Guardian Details",
                      icon: (Icons.arrow_forward_ios),
                      height: MediaQuery.of(context).size.height * 0.074,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ExtendedIconButtons(
                      onPressed: () {},
                      buttonColor: const Color(0xFFC6CBDD),
                      text: "Medical Conditions",
                      icon: (Icons.arrow_forward_ios),
                      height: MediaQuery.of(context).size.height * 0.074,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ExtendedIconButtons(
                      onPressed: () {},
                      buttonColor: const Color(0xFFC6CBDD),
                      text: "Documents",
                      icon: (Icons.arrow_forward_ios),
                      height: MediaQuery.of(context).size.height * 0.074,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ExtendedIconButtons(
                      onPressed: () {},
                      buttonColor: const Color(0xFFC6CBDD),
                      text: "Fee Details",
                      icon: (Icons.arrow_forward_ios),
                      height: MediaQuery.of(context).size.height * 0.074,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      child: ExtendedIconButtons(
                        onPressed: () {},
                        buttonColor: const Color(0xFFC6CBDD),
                        text: "View QR Code",
                        icon: (Icons.arrow_forward_ios),
                        height: MediaQuery.of(context).size.height * 0.074,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: AvatarGlow(
                    glowColor: Color(0xFF6c54c9),
                    endRadius: 70.0,
                    duration: Duration(milliseconds: 2000),
                    repeat: true,
                    showTwoGlows: true,
                    repeatPauseDuration: Duration(milliseconds: 100),
                    child: Material(
                      elevation: 8,
                      shape: CircleBorder(),
                      color: Colors.black87,
                      child: CircleAvatar(
                        radius: 55.0,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=785&q=80"),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      "DEEPRAJ BAIDYA",
                      style: GoogleFonts.arimo(
                        textStyle: const TextStyle(
                            fontSize: 20.0,
                            //fontWeight: FontWeight.w400,
                            color: Color(0xFFF0DCDC)),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "1000015975@dit.edu.in",
                      style: GoogleFonts.arimo(
                        textStyle: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFF0DCDC)),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Std Id: 1000015975",
                      style: GoogleFonts.arimo(
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFF0DCDC)),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Roll no: 210102099",
                      style: GoogleFonts.arimo(
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFF0DCDC)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
