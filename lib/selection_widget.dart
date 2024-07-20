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
      child: IntrinsicHeight(
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromRGBO(255, 199, 39, 1)),
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
              Image.asset(image, height: deviceHeight * .15)
            ],
          ),
        ),
      ),
    );
  }
}
