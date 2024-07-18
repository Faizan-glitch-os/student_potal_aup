import 'package:flutter/material.dart';

import 'package:student_potal_aup/scaffold_background_widget.dart';

class ShowNewsWidget extends StatelessWidget {
  const ShowNewsWidget({super.key, required this.newsData});

  final List newsData;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    void ShowImage(int index) {
      showModalBottomSheet(
        enableDrag: false,
        barrierColor: Colors.black12.withOpacity(.6),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            side:
                BorderSide(color: Color.fromRGBO(255, 199, 39, 1), width: 1.5)),
        context: context,
        builder: (ctx) => IntrinsicHeight(
          child: InteractiveViewer(
            minScale: 1,
            maxScale: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: const EdgeInsets.all(10),
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
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          ShowImage(index);
        },
        child: IntrinsicHeight(
          child: Container(
            width: deviceWidth,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: const Color.fromRGBO(255, 199, 39, 1), width: 1.5)
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 199, 39, 1),
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        newsData[index].date,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: deviceWidth * .05,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Icon(
                        Icons.favorite_border,
                        size: deviceWidth * 0.07,
                        color: const Color.fromRGBO(255, 199, 39, 1),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  newsData[index].title,
                  style: TextStyle(
                      color: const Color.fromRGBO(35, 41, 48, 1.0),
                      fontSize: deviceWidth * .06,
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
