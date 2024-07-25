import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:student_potal_aup/colors.dart';

class UploadingButtonWidget extends StatelessWidget {
  const UploadingButtonWidget({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(
            darkBlue,
          ),
          foregroundColor: WidgetStateProperty.all(halfWhite)),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Text(
          label,
          style: TextStyle(fontSize: 15.sp),
        ),
      ),
    );
  }
}
