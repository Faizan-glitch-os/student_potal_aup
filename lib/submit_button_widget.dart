import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popover/popover.dart';

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
      onPressed: () {
        showPopover(
          context: context,
          bodyBuilder: (context) => InkWell(
            onTap: () {
              Navigator.of(context)
                ..pop()
                ..pop();
            },
            child: SizedBox(
              height: 150.w,
              width: 150.w,
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Slip Downloaded',
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
            ),
          ),
        );
      },
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
