import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import 'package:student_potal_aup/colors.dart';
import 'package:student_potal_aup/widgets/text_field_widget.dart';

class UploadNotificationScreen extends StatefulWidget {
  const UploadNotificationScreen({super.key});

  @override
  State<UploadNotificationScreen> createState() =>
      _UploadNotificationScreenState();
}

class _UploadNotificationScreenState extends State<UploadNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController dateController = TextEditingController();
    final TextEditingController titleController = TextEditingController();

    return Scaffold(
      backgroundColor: halfWhite,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.r),
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Uploading Notification',
                  style: TextStyle(
                    fontSize: 40.sp,
                    color: golden,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(height: 30.h),
                TextFieldWidget(
                    textController: dateController,
                    label: 'Date',
                    keyboardType: TextInputType.text,
                    obscureText: false),
                SizedBox(height: 10.h),
                TextFieldWidget(
                    textController: titleController,
                    label: 'Title',
                    keyboardType: TextInputType.text,
                    obscureText: false),
                SizedBox(height: 10.h),
                Container(
                  height: 300.h,
                  width: ScreenUtil().screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(width: 1, color: golden),
                  ),
                  child: TextButton.icon(
                    style: ButtonStyle(
                        overlayColor: WidgetStateProperty.all(
                            darkPurple.withOpacity(.2))),
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo,
                      size: 30.r,
                      color: darkPurple,
                    ),
                    label: Text(
                      'Tap to Upload',
                      style: TextStyle(
                        color: darkPurple,
                        fontSize: 20.sp,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(darkPurple),
                    foregroundColor: WidgetStateProperty.all(halfWhite),
                  ),
                  child: Text(
                    'Upload',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
