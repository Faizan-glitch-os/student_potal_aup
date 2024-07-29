import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/screens/upload_notification_screen.dart';
import 'package:student_potal_aup/screens/upload_result_screen.dart';
import 'package:student_potal_aup/screens/upload_scholarship_screen.dart';
import 'package:student_potal_aup/widgets/uploading_button_widget.dart';

class UploadingOptionsPopOver extends StatelessWidget {
  const UploadingOptionsPopOver({super.key});

  @override
  Widget build(BuildContext context) {
    void NavigateToScreen(Widget screen) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (ctx, animation, secondAnimation) => screen,
          transitionsBuilder: (ctx, animation, secondAnimation, child) {
            const begin = Offset(0, 1);
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

    return Padding(
      padding: EdgeInsets.all(10.r),
      child: Column(
        children: [
          Text(
            'Access Granted',
            style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 20.sp,
              fontFamily: 'Montserrat',
            ),
          ),
          const Spacer(),
          UploadingButtonWidget(
              horizontalPadding: 20,
              label: 'Latest Notification',
              navigateScreen: () {
                NavigateToScreen(const UploadNotificationScreen());
              }),
          SizedBox(height: 5.h),
          UploadingButtonWidget(
              horizontalPadding: 20,
              label: 'Scholarship',
              navigateScreen: () {
                NavigateToScreen(const UploadScholarshipScreen());
              }),
          SizedBox(height: 5.h),
          UploadingButtonWidget(
            horizontalPadding: 20,
            label: 'Result',
            navigateScreen: () {
              NavigateToScreen(const UploadResultScreen());
            },
          ),
        ],
      ),
    );
  }
}
