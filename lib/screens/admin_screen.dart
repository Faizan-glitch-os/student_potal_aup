import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/colors.dart';

import '../widgets/scaffold_background_widget.dart';
import '../widgets/submit_button_widget.dart';
import '../widgets/text_field_widget.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  TextEditingController adminNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                SubmitButtonWidget(
                  adminName: adminNameController.text,
                  password: passwordController.text,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
