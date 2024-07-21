import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubmitButtonWidget extends StatelessWidget {
  const SubmitButtonWidget({
    super.key,
  });

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
            const Color.fromRGBO(255, 199, 39, 1),
          ),
          foregroundColor: WidgetStateProperty.all(Colors.white)),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Text(
          'Submit',
          style: TextStyle(fontSize: 20.sp),
        ),
      ),
    );
  }
}
