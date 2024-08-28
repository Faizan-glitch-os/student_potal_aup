import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:student_potal_aup/colors.dart';
import 'package:student_potal_aup/screens/bscs_screen.dart';
import 'package:student_potal_aup/screens/bsit_screen.dart';
import 'package:student_potal_aup/widgets/uploading_button_widget.dart';

class OutlineWidget extends StatelessWidget {
  const OutlineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void navigateToScreen(Widget screen) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (ctx, animation, secondAnimation) => screen,
          transitionsBuilder: (ctx, animation, secondAnimation, child) {
            const begin = Offset(1, 0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
        ),
      );
    }

    return Container(
      margin: EdgeInsets.all(5.r),
      padding: EdgeInsets.all(5.r),
      decoration: BoxDecoration(
        gradient: const RadialGradient(colors: [darkBlue, darkGrey]),
        border: Border.all(color: golden),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Text(
            'Outlines',
            style: TextStyle(
                fontSize: 18.sp,
                color: golden,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30.h),
          UploadingButtonWidget(
            horizontalPadding: 1,
            label: 'BSCS Course',
            navigateScreen: () {
              navigateToScreen(const BscsScreen());
            },
          ),
          UploadingButtonWidget(
            horizontalPadding: 1,
            label: 'BSIT Course',
            navigateScreen: () {
              navigateToScreen(const BsitScreen());
            },
          ),
        ],
      ),
    );
  }
}
