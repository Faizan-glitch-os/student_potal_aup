import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../colors.dart';

class DownloadNotificationWidget extends StatefulWidget {
  const DownloadNotificationWidget({super.key, required this.imageURL});

  final String imageURL;

  @override
  State<DownloadNotificationWidget> createState() =>
      _DownloadNotificationWidgetState();
}

class _DownloadNotificationWidgetState
    extends State<DownloadNotificationWidget> {
  Widget content = Text(
    'Download',
    style: TextStyle(
      fontSize: 15.sp,
      fontFamily: 'Montserrat',
    ),
  );

  Future<bool> _requestPermission(Permission permission) async {
    if (await permission.isGranted) {
      return true;
    } else {
      var result = await permission.request();
      print(result);
      return result == PermissionStatus.granted;
    }
  }

  Future<void> _downloadAndSaveImage(String imageUrl) async {
    String downloadURL = imageUrl;
    print(downloadURL);
    try {
      final response = await Dio().get(
        downloadURL,
        options: Options(responseType: ResponseType.bytes),
      );

      final directory =
          Directory('/storage/emulated/0/Download/Student Portal');

      if (!(await directory.exists())) {
        await directory.create(recursive: true);
      }

      // final filePath =
      //     "${Directory('/storage/emulated/0/Download')}/${DateTime.now()}.jpg";
      final filePath = join(directory.path, "${DateTime.now()}.jpg");

      final file = File(filePath);

      await file.writeAsBytes(response.data, flush: true);

      print("Image saved at: $filePath");
    } catch (e) {
      print("Error downloading or saving image: $e");
      throw e;
    }
  }

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
            darkPurple,
          ),
          foregroundColor: WidgetStateProperty.all(halfWhite)),
      onPressed: () async {
        print(widget.imageURL);
        setState(() {
          content = const CircularProgressIndicator(color: golden);
        });

        bool isPermissionGranted = await _requestPermission(Permission.storage);

        if (isPermissionGranted) {
          try {
            print('permission okay');
            await _downloadAndSaveImage(widget.imageURL);
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: halfWhite,
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Notification Downloaded Successfully',
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
          } catch (e) {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: halfWhite,
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Error Downloading Notification',
                      style: TextStyle(
                          color: darkPurple,
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
        } else {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              backgroundColor: halfWhite,
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Storage Permission Denied',
                    style: TextStyle(
                        color: darkPurple,
                        fontFamily: 'Montserrat',
                        fontSize: 25.sp),
                  ),
                  Image.asset(
                    'assets/images/fail.gif',
                    color: Colors.red,
                    height: 100.h,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              duration: const Duration(seconds: 3),
            ),
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: content,
      ),
    );
  }
}
