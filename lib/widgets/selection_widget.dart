import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:student_potal_aup/colors.dart';

class SelectionWidget extends StatelessWidget {
  const SelectionWidget(
      {super.key,
      required this.text,
      required this.image,
      required this.navigate});

  final String text;
  final String image;
  final Function() navigate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: const Color.fromRGBO(255, 199, 39, 1),
      onTap: navigate,
      child: Container(
        margin: EdgeInsets.all(10.r),
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [darkBlue, darkGrey]),
          border: Border.all(color: golden),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: golden,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            Image.asset(
              image,
              height: 100.h,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
