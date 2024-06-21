import 'package:flutter/material.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:student_potal_aup/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(
      {super.key, required this.screenWidth, required this.screenHeight});

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:
          Lottie.asset('assets/splashScreen/Animation - 1718877457625.json'),
      nextScreen: MainScreen(
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
      duration: 5000,
      splashIconSize: screenWidth,
      splashTransition: SplashTransition.sizeTransition,
    );
  }
}
