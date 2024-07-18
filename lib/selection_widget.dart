import 'package:flutter/material.dart';

class SelectionWidget extends StatelessWidget {
  const SelectionWidget(
      {super.key,
      required this.deviceWidth,
      required this.deviceHeight,
      required this.text,
      required this.image,
      required this.navigate});

  final double deviceWidth;
  final double deviceHeight;
  final String text;
  final String image;
  final Function() navigate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: const Color.fromRGBO(255, 199, 39, 1),
      onTap: navigate,
      child: Container(
        margin: const EdgeInsets.all(10),
        width: deviceWidth * .4,
        height: deviceHeight * .2,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color.fromRGBO(255, 199, 39, 1)),
          // boxShadow: const [
          //   BoxShadow(
          //     color: Color.fromRGBO(35, 41, 48, 1.0),
          //     blurRadius: 10,
          //     spreadRadius: 5,
          //   )
          // ],
          // gradient: const LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [
          //     Color.fromRGBO(69, 90, 100, 1),
          //     Color.fromRGBO(35, 41, 48, 1.0),
          //   ],
          // ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: deviceWidth * .06,
                  color: const Color.fromRGBO(255, 199, 39, 1),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Image.asset(image),
            )
          ],
        ),
      ),
    );
  }
}
