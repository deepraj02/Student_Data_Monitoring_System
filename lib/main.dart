import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:atlass_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

/* void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    ); */

//?  Uncomment this lines above in order to enable device preview

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: const Color(0xFF272B50),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: const Color(0xFF272B50),
        splash: Image.asset("assets/splashLogo.png"),
        nextScreen: WelcomeScreen(),
        splashTransition: SplashTransition.sizeTransition,
        splashIconSize: 500,
      ),
    );
  }
}
