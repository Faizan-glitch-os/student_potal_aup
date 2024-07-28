import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/screens/admin_screen.dart';
import 'package:student_potal_aup/screens/bscs_screen.dart';
import 'package:student_potal_aup/screens/bsit_screen.dart';

import 'package:student_potal_aup/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: BscsScreen(),
        );
      },
    );
  }
}
