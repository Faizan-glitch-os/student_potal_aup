import 'package:flutter/material.dart';

class ScaffoldBackground extends StatelessWidget {
  const ScaffoldBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(0, 72, 128, 1.0),
          Color.fromRGBO(0, 24, 42, 1.0),
        ], begin: Alignment.topRight, end: Alignment.bottomLeft),
      ),
      child: child,
    );
  }
}
