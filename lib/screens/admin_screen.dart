import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/colors.dart';
import 'package:student_potal_aup/screens/upload_notification_screen.dart';
import 'package:student_potal_aup/screens/upload_result_screen.dart';
import 'package:student_potal_aup/screens/upload_scholarship_screen.dart';

import '../widgets/text_field_widget.dart';
import '../widgets/uploading_button_widget.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  Widget content = Text(
    textAlign: TextAlign.center,
    'Enter valid Admin Name and Password to continue',
    style:
        TextStyle(color: darkPurple, fontSize: 20.sp, fontFamily: 'Montserrat'),
  );

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

  @override
  Widget build(BuildContext context) {
    TextEditingController adminNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    void Succes() {
      setState(() {
        content = Column(
          children: [
            Text(
              textAlign: TextAlign.center,
              'Access Granted',
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 25.sp,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(height: 10.h),
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
        );
      });
    }

    void Fail() {
      setState(
        () {
          content = Container(
            padding: EdgeInsets.all(10.r),
            child: Text(
              textAlign: TextAlign.center,
              'Access Denied, Wrong Credentials',
              style: TextStyle(
                color: Colors.red,
                fontSize: 25.sp,
                fontFamily: 'Montserrat',
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: halfWhite,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: <Widget>[
                TextFieldWidget(
                    obscureText: false,
                    textController: adminNameController,
                    label: 'Admin Name',
                    keyboardType: TextInputType.text),
                SizedBox(height: 10.h),
                TextFieldWidget(
                    obscureText: true,
                    textController: passwordController,
                    label: 'Password',
                    keyboardType: TextInputType.text),
                SizedBox(height: 20.h),
                ElevatedButton(
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
                    print(adminNameController.text);
                    print(passwordController.text);
                    if (adminNameController.text == 'admin1' &&
                        passwordController.text == 'admin2') {
                      Succes();
                      FocusScope.of(context).unfocus();
                    } else {
                      Fail();
                    }
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 60.h),
                content
                // SubmitButtonWidget(
                //   adminName: adminNameController.text,
                //   password: passwordController.text,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
