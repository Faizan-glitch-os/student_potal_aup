import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class DownloadNotificationWidget extends StatelessWidget {
  const DownloadNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(
            darkPurple,
          ),
          foregroundColor: WidgetStateProperty.all(halfWhite)),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Text(
          'Submit',
          style: TextStyle(
            fontSize: 15.sp,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    );
  }
}
