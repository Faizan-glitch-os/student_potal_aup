import 'package:flutter/material.dart';

import 'package:student_potal_aup/deposit_slip_screen.dart';
import 'package:student_potal_aup/notifications_screen.dart';
import 'package:student_potal_aup/renewal_slip_screen.dart';
import 'package:student_potal_aup/scaffold_background_widget.dart';
import 'package:student_potal_aup/scholarship_screen.dart';
import 'selection_widget.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

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
        body: ScaffoldBackground(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectionWidget(
                  deviceWidth: deviceWidth,
                  deviceHeight: deviceHeight,
                  text: 'Notifications',
                  image: 'assets/images/notifications.gif',
                  navigate: () {
                    NavigateToScreen(NotificationsScreen());
                  },
                ),
                SelectionWidget(
                  deviceWidth: deviceWidth,
                  deviceHeight: deviceHeight,
                  text: 'Scholarships',
                  image: 'assets/images/scholarship.gif',
                  navigate: () {
                    NavigateToScreen(ScholarshipScreen());
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectionWidget(
                  deviceWidth: deviceWidth,
                  deviceHeight: deviceHeight,
                  text: 'Renewal Slip',
                  image: 'assets/images/slip.gif',
                  navigate: () {
                    NavigateToScreen(RenewalSlipScreen());
                  },
                ),
                SelectionWidget(
                  deviceWidth: deviceWidth,
                  deviceHeight: deviceHeight,
                  text: 'Deposit Slip',
                  image: 'assets/images/slip.gif',
                  navigate: () {
                    NavigateToScreen(DepositSlipScreen());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
