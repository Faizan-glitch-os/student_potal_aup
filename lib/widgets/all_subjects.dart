import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

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
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
            color: darkPurple,
            border: Border.all(color: golden),
            borderRadius: BorderRadius.circular(10.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              semester,
              style: TextStyle(
                color: golden,
                fontSize: 18.sp,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Code',
                  style: TextStyle(
                      color: golden, fontSize: 14.sp, fontFamily: 'Montserrat'),
                ),
                Text(
                  'Subject',
                  style: TextStyle(
                      color: golden, fontSize: 14.sp, fontFamily: 'Montserrat'),
                ),
                Text(
                  'Download',
                  style: TextStyle(
                      color: golden, fontSize: 14.sp, fontFamily: 'Montserrat'),
                ),
              ],
            ),
            const Divider(
              color: golden,
            ),
            ...subjects.map(
              (item) => Padding(
                padding: EdgeInsets.all(8.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${item.code}',
                      style: TextStyle(
                        color: halfWhite,
                        fontSize: 11.sp,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Text(
                      '${item.subject}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: halfWhite,
                        fontSize: 11.sp,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Uri url = Uri.parse(item.download);
                        launchUrl(url);
                      },
                      icon: Icon(
                        Icons.download,
                        size: 16.r,
                        color: Colors.greenAccent,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
