import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/screens/admin_screen.dart';
import 'package:student_potal_aup/screens/results_screen.dart';

import 'package:student_potal_aup/screens/scholarship_screen.dart';
import 'package:student_potal_aup/widgets/outline_widget.dart';
import 'package:student_potal_aup/colors.dart';
import '../widgets/download_receipt_widget.dart';
import '../widgets/selection_widget.dart';
import 'notifications_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void NavigateToScreen(Widget screen) {
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

    return Scaffold(
      backgroundColor: halfWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              highlightColor: golden.withOpacity(.2),
              onPressed: () {
                NavigateToScreen(const AdminScreen());
              },
              icon: Icon(
                Icons.admin_panel_settings,
                size: 80.r,
                color: darkGrey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectionWidget(
                  text: 'Notifications',
                  image: 'assets/images/notifications.gif',
                  navigate: () {
                    NavigateToScreen(const NotificationsScreen());
                  },
                ),
                SelectionWidget(
                  text: 'Scholarships',
                  image: 'assets/images/scholarship.gif',
                  navigate: () {
                    NavigateToScreen(const ScholarshipScreen());
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectionWidget(
                  text: '     Results     ',
                  image: 'assets/images/results.gif',
                  navigate: () {
                    NavigateToScreen(const ResultsScreen());
                  },
                ),
                const OutlineWidget(),
              ],
            ),
            const DownloadReceiptWidget(
              text: 'Download Renewal Slip',
              address: 'http://175.107.62.210:8080/Admissions/FeeRenewal',
            ),
            SizedBox(height: 5.h),
            const DownloadReceiptWidget(
              text: 'Download Deposit Slip',
              address: 'http://portal.aup.edu.pk/Student/FeeReceipt',
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     SelectionWidget(
            //       deviceWidth: deviceWidth,
            //       deviceHeight: deviceHeight,
            //       text: 'Renewal Slip',
            //       image: 'assets/images/slip.gif',
            //       navigate: () {
            //         NavigateToScreen(RenewalSlipScreen());
            //       },
            //     ),
            //     SelectionWidget(
            //       deviceWidth: deviceWidth,
            //       deviceHeight: deviceHeight,
            //       text: 'Deposit Slip',
            //       image: 'assets/images/slip.gif',
            //       navigate: () {
            //         NavigateToScreen(DepositSlipScreen());
            //       },
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
