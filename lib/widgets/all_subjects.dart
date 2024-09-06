import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:open_file/open_file.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'package:student_potal_aup/colors.dart';

class AllSubjects extends StatelessWidget {
  const AllSubjects(
      {super.key, required this.subjects, required this.semester});

  final List subjects;
  final String semester;

  Future<File> _loadFileFromAssets(String fileName) async {
    final byteData = await rootBundle.load('assets/docs/$fileName');

    final tempDir = await getTemporaryDirectory();

    final tempFile = File('${tempDir.path}/$fileName');

    await tempFile.writeAsBytes(byteData.buffer.asUint8List(), flush: true);

    return tempFile;
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin: EdgeInsets.all(10.r),
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
            color: darkPurple,
            border: Border.all(color: golden),
            borderRadius: BorderRadius.circular(10.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              semester,
              style: TextStyle(
                color: golden,
                fontSize: 18.sp,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Code',
                  style: TextStyle(
                      color: golden, fontSize: 14.sp, fontFamily: 'Montserrat'),
                ),
                Text(
                  'Subject',
                  style: TextStyle(
                      color: golden, fontSize: 14.sp, fontFamily: 'Montserrat'),
                ),
                Text(
                  'Open',
                  style: TextStyle(
                      color: golden, fontSize: 14.sp, fontFamily: 'Montserrat'),
                ),
              ],
            ),
            const Divider(
              color: golden,
            ),
            ...subjects.map(
              (item) => Padding(
                padding: EdgeInsets.all(8.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${item.code}',
                      style: TextStyle(
                        color: halfWhite,
                        fontSize: 11.sp,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Text(
                      '${item.subject}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: halfWhite,
                        fontSize: 14.sp,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        // Uri url = Uri.parse(item.download);
                        // launchUrl(url);
                        print('open button pressed');

                        String assetFileName = item.download;
                        final file = await _loadFileFromAssets(assetFileName);

                        await OpenFile.open(file.path);
                      },
                      icon: Icon(
                        Icons.file_open,
                        size: 16.r,
                        color: Colors.greenAccent,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
