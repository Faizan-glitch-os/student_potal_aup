import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

import 'package:student_potal_aup/colors.dart';
import 'package:student_potal_aup/widgets/text_field_widget.dart';

class UploadResultScreen extends StatefulWidget {
  const UploadResultScreen({super.key});

  @override
  State<UploadResultScreen> createState() => _UploadResultScreenState();
}

class _UploadResultScreenState extends State<UploadResultScreen> {
  Widget content = Text(
    textAlign: TextAlign.center,
    'Enter Date, Title and Download Link',
    style:
        TextStyle(color: darkPurple, fontSize: 20.sp, fontFamily: 'Montserrat'),
  );

  Widget buttonContent = Text(
    'Upload',
    style: TextStyle(
      fontSize: 15.sp,
      fontFamily: 'Montserrat',
    ),
  );

  void UploadResult(String date, String title, String downloadLink) async {
    try {
      final url = Uri.https('fyp-demo-futter-default-rtdb.firebaseio.com',
          'uploaded-results.json');

      http.post(
        url,
        headers: {'Content-Type': 'Applications/json'},
        body: json.encode(
          {'date': date, 'title': title, 'image': downloadLink},
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: halfWhite,
          content: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                'Result Uploaded Successfully',
                style: TextStyle(
                    color: darkPurple,
                    fontFamily: 'Montserrat',
                    fontSize: 25.sp),
              ),
              Image.asset(
                'assets/images/success.gif',
                height: 100.h,
                fit: BoxFit.cover,
              ),
            ],
          ),
          duration: const Duration(seconds: 3),
        ),
      );

      Navigator.of(context).pop();
    } catch (error) {
      print(error);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: halfWhite,
          content: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                'Failed to Upload, please try again later',
                style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'Montserrat',
                    fontSize: 25.sp),
              ),
              Image.asset(
                'assets/images/fail.gif',
                height: 100.h,
                fit: BoxFit.cover,
              ),
            ],
          ),
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController dateController = TextEditingController();
    final TextEditingController titleController = TextEditingController();
    final TextEditingController downloadLinkController =
        TextEditingController();

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
                  'Uploading Result',
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: darkBlue,
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
                TextFieldWidget(
                    textController: downloadLinkController,
                    label: 'Download Link',
                    keyboardType: TextInputType.text,
                    obscureText: false),
                SizedBox(height: 10.h),
                ElevatedButton(
                    onPressed: () {
                      if (dateController.text.isEmpty ||
                          titleController.text.isEmpty ||
                          downloadLinkController.text.isEmpty) {
                        setState(
                          () {
                            content = Text(
                              textAlign: TextAlign.center,
                              'Please fill all the required fields',
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 20.sp,
                                  fontFamily: 'Montserrat'),
                            );
                          },
                        );
                      } else {
                        setState(() {
                          buttonContent =
                              const CircularProgressIndicator(color: golden);
                        });
                        UploadResult(dateController.text, titleController.text,
                            downloadLinkController.text);
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(darkPurple),
                      foregroundColor: WidgetStateProperty.all(halfWhite),
                    ),
                    child: buttonContent),
                content
              ],
            ),
          ),
        ),
      ),
    );
  }
}
