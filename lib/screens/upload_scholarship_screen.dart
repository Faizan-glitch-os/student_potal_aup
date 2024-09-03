import 'dart:convert';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import 'package:student_potal_aup/colors.dart';
import 'package:student_potal_aup/widgets/text_field_widget.dart';

class UploadScholarshipScreen extends StatefulWidget {
  const UploadScholarshipScreen({super.key});

  @override
  State<UploadScholarshipScreen> createState() =>
      _UploadScholarshipScreenState();
}

class _UploadScholarshipScreenState extends State<UploadScholarshipScreen> {
  Widget content = Text(
    textAlign: TextAlign.center,
    'Enter Date, Title and Upload Image to continue',
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

  File? pickedImage;

  void pickPicture() async {
    final image = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 100);

    if (image == null) {
      return null;
    }

    setState(() {
      pickedImage = File(image.path);
    });
  }

  void uploadPicture(String date, String title) async {
    final storageRef = FirebaseStorage.instance
        .ref()
        .child('uploaded-scholarships')
        .child('${DateTime.now()}.jpg');
    try {
      await storageRef.putFile(pickedImage!);

      String imageUrl = await storageRef.getDownloadURL();

      final url = Uri.https('fyp-demo-futter-default-rtdb.firebaseio.com',
          'uploaded-scholarships.json');

      http.post(
        url,
        headers: {'Content-Type': 'Applications/json'},
        body: json.encode(
          {'date': date, 'title': title, 'image': imageUrl},
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
                'Scholarship Uploaded Successfully',
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

    Widget pickContent = TextButton.icon(
      style: ButtonStyle(
          overlayColor: WidgetStateProperty.all(darkPurple.withOpacity(.2))),
      onPressed: pickPicture,
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
    );

    if (pickedImage != null) {
      setState(
        () {
          pickContent = Image.file(
            pickedImage!,
            fit: BoxFit.contain,
            width: double.infinity,
            height: double.infinity,
          );
        },
      );
    }

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
                  'Uploading Scholarship',
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: darkBlue,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(height: 30.h),
                InkWell(
                  onTap: pickPicture,
                  child: Container(
                      height: 350.h,
                      width: ScreenUtil().screenWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(width: 1, color: golden),
                      ),
                      child: pickContent),
                ),
                SizedBox(height: 10.h),
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
                ElevatedButton(
                    onPressed: () {
                      if (dateController.text.isEmpty ||
                          titleController.text.isEmpty ||
                          pickedImage == null) {
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
                        uploadPicture(
                            dateController.text, titleController.text);
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
