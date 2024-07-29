import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:student_potal_aup/colors.dart';

import 'favorite_button_widget.dart';

class ShowResultsWidget extends StatelessWidget {
  const ShowResultsWidget({super.key, required this.newsData});

  final List newsData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsData.length,
      itemBuilder: (context, index) => IntrinsicHeight(
        child: Container(
          width: ScreenUtil().screenWidth,
          margin: EdgeInsets.all(10.r),
          padding: EdgeInsets.all(20.r),
          decoration: BoxDecoration(
              color: darkPurple,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(
                  color: const Color.fromRGBO(255, 199, 39, 1), width: 1.5.w)
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.white38,
              //     spreadRadius: 10,
              //     blurRadius: 5,
              //     offset: Offset(0, 4),
              //   ),
              // ],
              // gradient: const LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   colors: [
              //     Color.fromRGBO(69, 90, 100, 1),
              //     Color.fromRGBO(35, 41, 48, 1.0),
              //   ],
              // ),
              ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 199, 39, 1),
                        borderRadius: BorderRadius.circular(2.r)),
                    child: Text(
                      newsData[index].date,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Uri url = Uri.parse(newsData[index].image);
                      launchUrl(url);
                    },
                    icon: Icon(
                      Icons.download,
                      size: 30.r,
                      color: Colors.greenAccent,
                    ),
                  ),
                ],
              ),

              // const Spacer(),
              // FavoriteButton(
              //     date: newsData[index].date,
              //     title: newsData[index].title,
              //     image: newsData[index].image),
              SizedBox(height: 20.h),
              Text(
                newsData[index].title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
