import 'package:flutter/material.dart';
import 'package:student_potal_aup/data_model.dart';

class MainScreen extends StatelessWidget {
  MainScreen(
      {super.key, required this.screenWidth, required this.screenHeight});

  final double screenWidth;
  final double screenHeight;

  final notificationsData = [
    Notifications(
        date: '15/06/2024',
        title: 'Summer Vacations notification',
        image: 'assets/appImages/notifications/1.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'Demonstration of Lecturers Faculty of Crop Production is scheduled to be held on 13-14 June, 2024 in the P&D committee room.',
        image: 'assets/appImages/notifications/2.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'Decisions of the UFM cases dealing committee meeting for BBA (H), BS (CS/IT), B.Sc. (H) & DVS students held on 28-05-2024 & 31-05-2024.',
        image: 'assets/appImages/notifications/3.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'UFM cases dealing committee meeting for BBA (H), BS (CS/IT) & DVS students have been scheduled on 31/05/2024',
        image: 'assets/appImages/notifications/4.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'The University of Agriculture Peshawar will remain closed on 28-05-2024 on account of "Youm-e-Takbeer"',
        image: 'assets/appImages/notifications/5.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'UFM cases dealing committee meeting for BBA (H), BS (CS/IT) & DVS students have been scheduled on 28/05/2024.',
        image: 'assets/appImages/notifications/6.png'),
    Notifications(
        date: '15/06/2024',
        title: 'Makeup Form Submission Last Date Extended till: 05-06-2024.',
        image: 'assets/appImages/notifications/7.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'One day Study Tour for Undergraduate Students (Last Date: 14-05-2024)',
        image: 'assets/appImages/notifications/8.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'Submission Of Make Up Examination Forms (Outgoing as well enrolled students of Agriculture/FMCS session Fall, 2018 and onward.',
        image: 'assets/appImages/notifications/9.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'Demonstration for the Posts of Lecturers FAHVS (Scheduled on: 17 & 18 April, 2024)',
        image: 'assets/appImages/notifications/10.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'Call for Papers (ICTAPP-24) 2nd International Conference on Computing Technologies, Tools and Applications JUNE 04-06, 2024 (Deadline for Paper submission: 05-05-2024)',
        image: 'assets/appImages/notifications/11.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'Admission/Migration in 2nd semester of undergraduate degree programs for the session Fall 2023-27 (Last Date: 06-04-2024)',
        image: 'assets/appImages/notifications/12.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'Recommendation for conferment of Pakistan Civil Awards-2024 (Last Date: 20-03-2024)',
        image: 'assets/appImages/notifications/13.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'Notice regarding unregistered students of Spring Semester 2024 (Last date: 14-03-2024)',
        image: 'assets/appImages/notifications/14.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'Admission Notice Class Nursery to 9th Session 2024-25 AUPS & College (Boys/Girls) Last Date: 18-03-2024.',
        image: 'assets/appImages/notifications/15.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'Schedule of Shortlisted Candidates for Interview/Demonstration FMCS (from 22 to 23 Feb, 2024).',
        image: 'assets/appImages/notifications/16.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'Notice for selected students who didn\'t receive laptops under PM Youth Laptop Scheme Phase III (Last Date: 16-02-2024)',
        image: 'assets/appImages/notifications/17.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'PhD Written Comprehensive Examination (Last Date to apply 29-02-2024)',
        image: 'assets/appImages/notifications/18.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'Office Orders released in light of judgment of the Hon\'ble Supreme Court of Pakistan.',
        image: 'assets/appImages/notifications/19.png'),
    Notifications(
        date: '15/06/2024',
        title:
            'Demonstration for the Posts of Lecturers scheduled for February 14 & 15, 2024 has been postponed.',
        image: 'assets/appImages/notifications/20.png'),
  ];

  final scholarshipsData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Portal'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_rounded),
          ),
        ],
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Card(
            child: Row(
              children: [Text('date'), Text('title')],
            ),
          ),
        ),
      ),
    );
  }
}
