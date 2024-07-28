import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popover/popover.dart';

import 'package:student_potal_aup/colors.dart';
import 'package:student_potal_aup/screens/uploading_options_pop_over.dart';

class SubmitButtonWidget extends StatelessWidget {
  const SubmitButtonWidget({
    super.key,
    required this.adminName,
    required this.password,
  });

  final String adminName;
  final String password;

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
      onPressed: () {
        print(adminName);
        print(password);
        if (adminName == '' && password == '') {
          showPopover(
              barrierColor: Colors.black.withOpacity(.5),
              backgroundColor: darkPurple,
              height: 200.h,
              context: context,
              bodyBuilder: (context) => UploadingOptionsPopOver());
        } else {
          showPopover(
            barrierColor: Colors.black.withOpacity(.5),
            backgroundColor: darkPurple,
            context: context,
            bodyBuilder: (context) => Container(
              padding: EdgeInsets.all(10.r),
              child: Text(
                'Access Denied, Wrong Credentials',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 10.sp,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          );
        }
      },
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
