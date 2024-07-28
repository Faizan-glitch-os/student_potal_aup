import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/colors.dart';

class AllSubjects extends StatelessWidget {
  const AllSubjects(
      {super.key, required this.subjects, required this.semester});

  final List subjects;
  final String semester;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin: EdgeInsets.all(10.r),
        padding: EdgeInsets.all(5.r),
        decoration: BoxDecoration(
            color: darkPurple,
            border: Border.all(color: golden),
            borderRadius: BorderRadius.circular(5.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              semester,
              style: TextStyle(color: halfWhite, fontSize: 20.sp),
            ),
            SizedBox(height: 20.h),
            ...subjects.map((item) => Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${item.code}',
                        style: TextStyle(color: halfWhite, fontSize: 10.sp),
                      ),
                      Text(
                        '${item.subject}',
                        style: TextStyle(color: halfWhite, fontSize: 10.sp),
                      ),
                      Text(
                        '${item.download}',
                        style: TextStyle(color: halfWhite, fontSize: 10.sp),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
