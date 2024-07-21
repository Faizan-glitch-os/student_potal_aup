import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:student_potal_aup/scaffold_background_widget.dart';

import 'favorite_button_widget.dart';

class ShowNewsWidget extends StatelessWidget {
  const ShowNewsWidget({super.key, required this.newsData});

  final List newsData;

  @override
  Widget build(BuildContext context) {
    void ShowImage(int index) {
      showModalBottomSheet(
        enableDrag: false,
        barrierColor: Colors.black12.withOpacity(.6),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
            side: BorderSide(
                color: Color.fromRGBO(255, 199, 39, 1), width: 1.5.r)),
        context: context,
        builder: (ctx) => IntrinsicHeight(
          child: InteractiveViewer(
            minScale: 1,
            maxScale: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Padding(
                padding: EdgeInsets.all(10.r),
                child: Image.asset(
                  newsData[index].image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      );
    }

    return ScaffoldBackground(
        child: ListView.builder(
      itemCount: newsData.length,
      itemBuilder: (context, index) => InkWell(
        splashColor: const Color.fromRGBO(35, 41, 48, 1.0),
        borderRadius: BorderRadius.circular(10.r),
        onTap: () {
          ShowImage(index);
        },
        child: IntrinsicHeight(
          child: Container(
            width: ScreenUtil().screenWidth,
            margin: EdgeInsets.all(20.r),
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
                color: Colors.white,
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
                    const Spacer(),
                    FavoriteButton(
                        date: newsData[index].date,
                        title: newsData[index].title,
                        image: newsData[index].image),
                  ],
                ),
                SizedBox(height: 15.h),
                Text(
                  newsData[index].title,
                  style: TextStyle(
                      color: const Color.fromRGBO(35, 41, 48, 1.0),
                      fontSize: 20.sp,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
