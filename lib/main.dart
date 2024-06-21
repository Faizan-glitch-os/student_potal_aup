import 'package:flutter/material.dart';
import 'package:student_potal_aup/main_screen.dart';
import 'package:student_potal_aup/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainScreen(
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      ),
    );
  }
}
