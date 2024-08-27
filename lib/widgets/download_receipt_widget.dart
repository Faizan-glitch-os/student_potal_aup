import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../colors.dart';

class DownloadReceiptWidget extends StatelessWidget {
  const DownloadReceiptWidget(
      {super.key, required this.text, required this.address});

  final String text;
  final String address;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: golden.withOpacity(.5),
      borderRadius: BorderRadius.circular(5.r),
      onTap: () {
        Uri url = Uri.parse(address);
        launchUrl(url);
      },
      child: Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [darkGrey, darkBlue]),
          border: Border.all(color: golden),
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 15.sp, color: halfWhite),
        ),
      ),
    );
  }
}
