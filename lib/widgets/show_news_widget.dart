import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/colors.dart';

class ShowNewsWidget extends StatelessWidget {
  const ShowNewsWidget({
    super.key,
    required this.newsData,
  });

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
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            side: BorderSide(color: golden, width: 1.5.r)),
        context: context,
        builder: (ctx) => IntrinsicHeight(
          child: InteractiveViewer(
            minScale: 1,
            maxScale: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Padding(
                padding: EdgeInsets.all(10.r),
                child: Image.network(
                  newsData[index].image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      );
    }

    return ListView.builder(
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                  decoration: BoxDecoration(
                      color: golden, borderRadius: BorderRadius.circular(2.r)),
                  child: Text(
                    newsData[index].date,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
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
      ),
    );
  }
}
