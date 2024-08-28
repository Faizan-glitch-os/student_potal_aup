import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:http/http.dart' as http;
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import 'package:student_potal_aup/colors.dart';

import '../data_model.dart';
import '../widgets/show_news_widget.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  late Future<List<Notifications>> loadedNews;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadedNews = LoadNews();
  }

  Future<List<Notifications>> LoadNews() async {
    final url = Uri.https('fyp-demo-futter-default-rtdb.firebaseio.com',
        'uploaded-notifications.json');

    final response = await http.get(url);

    if (response.statusCode >= 400) {
      throw Exception('Failed to fetch data');
    }
    if (response.body == 'null') {
      return [];
    }

    final Map receivedList = json.decode(response.body);

    final List<Notifications> tempList = [];

    for (final item in receivedList.entries) {
      tempList.add(Notifications(
          date: item.value['date'],
          title: item.value['title'],
          image: item.value['image']));
    }

    return tempList.reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: halfWhite,
      body: FutureBuilder(
        future: loadedNews,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: golden,
              ),
            );
          }
          if (snapshot.hasError) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/offline.gif',
                  height: 150.h,
                  fit: BoxFit.contain,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'May be your Internet is not working',
                  style: TextStyle(
                      color: darkPurple,
                      fontSize: 20.sp,
                      fontFamily: 'Montserrat'),
                )
              ],
            );
          }
          if (snapshot.data!.isEmpty) {
            return Center(
              child: Text(
                textAlign: TextAlign.center,
                'No New Notifications Yet',
                style: TextStyle(
                    color: halfWhite,
                    fontFamily: 'Montserrat',
                    fontSize: 30.sp),
              ),
            );
          }

          return ShowNewsWidget(
            newsData: snapshot.data!,
          );
        },
      ),
    );
  }
}
