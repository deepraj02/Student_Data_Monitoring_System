import 'package:atlass_app/models/nav_bar_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Color primaryColor = const Color(0xff18203d);

  final Color secondaryColor = const Color(0xff232c51);

  final TextEditingController nameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: primaryColor,
        body: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Image.asset(
                    'assets/bg2.png',
                    height: 300,
                    width: 300,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Sign in to continue',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.acme(color: Colors.white, fontSize: 28),
                ),
                const SizedBox(height: 20),

                const SizedBox(
                  height: 20,
                ),
                _buildTextField(
                    nameController, Icons.account_circle, 'Username'),
                const SizedBox(height: 20),
                _buildTextField(passwordController, Icons.lock, 'Password'),
                const SizedBox(height: 30),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: FlatButton.icon(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),
                      onPressed: () {
                        setState(() {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) {
                            return const NavBar();
                          }));
                        });
                      },
                      color: const Color(0xFF886afc),
                      label: const Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.black87),
                      ),
                      icon: const Icon(Icons.arrow_forward_outlined),
                    ),
                  ),
                ),

                //SizedBox(height: 40),
              ],
            ),
          ),
        ));
  }

  _buildTextField(
      TextEditingController controller, IconData icon, String labelText) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: secondaryColor,
          border: Border.all(color: const Color(0xFF886afc))),
      child: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.white),
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            // prefix: Icon(icon),
            border: InputBorder.none),
      ),
    );
  }
}
