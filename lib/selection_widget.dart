import 'package:flutter/material.dart';

class SelectionWidget extends StatelessWidget {
  const SelectionWidget({
    super.key,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.text,
  });

  final double deviceWidth;
  final double deviceHeight;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: deviceWidth * .3,
      height: deviceHeight * .2,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(35, 41, 48, 1.0),
            blurRadius: 10,
            spreadRadius: 5,
          )
        ],
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(69, 90, 100, 1),
            Color.fromRGBO(35, 41, 48, 1.0),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromRGBO(255, 199, 39, 1),
        ),
      ),
    );
  }
}
