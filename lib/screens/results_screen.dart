import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:http/http.dart' as http;

import 'package:student_potal_aup/colors.dart';
import 'package:student_potal_aup/widgets/show_results_widget.dart';

import '../data_model.dart';
import '../widgets/show_news_widget.dart';

class ResultsScreen extends StatefulWidget {
  ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  late Future<List<Notifications>> LoadedNews;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadedNews = LoadNews();
  }

  Future<List<Notifications>> LoadNews() async {
    final url = Uri.https(
        'fyp-demo-futter-default-rtdb.firebaseio.com', 'uploaded-results.json');

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
            future: LoadedNews,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                    color: golden,
                  ),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/offline.gif',
                        height: 150.h,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'May be your Internet is not working',
                        style: TextStyle(
                            color: darkPurple,
                            fontSize: 20.sp,
                            fontFamily: 'Montserrat'),
                      ),
                    ],
                  ),
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

              return ShowResultsWidget(newsData: snapshot.data!);
            }));
  }
}
