import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/colors.dart';

class BscsScreen extends StatelessWidget {
  const BscsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: halfWhite,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) => IntrinsicHeight(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  padding: EdgeInsets.all(10.r),
                  decoration: BoxDecoration(
                      color: darkPurple, border: Border.all(color: golden)),
                  child: Column(
                    children: [
                      Text(
                        'Semester-${index + 1}',
                        style: TextStyle(color: halfWhite),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Codes-${index + 1}',
                            style: TextStyle(color: halfWhite),
                          ),
                          Text(
                            'Course-${index + 1}',
                            style: TextStyle(color: halfWhite),
                          ),
                          Text(
                            'Download',
                            style: TextStyle(color: halfWhite),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
