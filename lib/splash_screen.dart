import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:student_potal_aup/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: const Color.fromRGBO(0, 72, 128, 1),
      splash:
          Lottie.asset('assets/splashScreen/Animation - 1718877457625.json'),
      nextScreen: MainScreen(),
      duration: 3000,
      splashIconSize: ScreenUtil().screenWidth,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
    );
  }
}
