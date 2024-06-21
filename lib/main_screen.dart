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

  final scholarshipsData = [
    Scholarships(
        date: '',
        title:
            'Recommended Students for SWEF Scholarship 2024 (Last Date: 10-05-2024)',
        image: 'assets/appImages/scholarships/1.png'),
    Scholarships(
        date: '',
        title:
            'Quaid - e - Azam Aligarh Scholarship Trust (Last Date: 31-05-2024)',
        image: 'assets/appImages/scholarships/2.png'),
    Scholarships(
        date: '',
        title:
            'Notice for Ehsaas Scholarship Recipients regarding Coursera International',
        image: 'assets/appImages/scholarships/3.png'),
    Scholarships(
        date: '',
        title: 'Akora Seeds Scholarship interview to be held on 21-05-2024',
        image: 'assets/appImages/scholarships/4.png'),
    Scholarships(
        date: '',
        title: 'KPEF Scholarship 2023-24 interview to be held on 21-05-2024',
        image: 'assets/appImages/scholarships/5.png'),
    Scholarships(
        date: '',
        title: 'Akora Seeds Scholarship Program (Last Date: 17-04-2024)',
        image: 'assets/appImages/scholarships/6.png'),
    Scholarships(
        date: '',
        title: 'Aspire Scholarship Program 2023-24 (Last Date: 21-03-2024)',
        image: 'assets/appImages/scholarships/7.png'),
    Scholarships(
        date: '',
        title: 'Khyber Pakhtunkhwa Education Foundation Scholarship 2023-24',
        image: 'assets/appImages/scholarships/8.png'),
    Scholarships(
        date: '',
        title:
            'Merged Areas Reserved Scholarship 2023-2024 (Last Date: 06-02-2024)',
        image: 'assets/appImages/scholarships/9.png'),
    Scholarships(
        date: '',
        title: 'SWEF Scholarship Program 2023 Interview (From: 08-01-2024)',
        image: 'assets/appImages/scholarships/10.png'),
    Scholarships(
        date: '',
        title:
            'Scholarship Notice (1. SWEF Scholarship, 2. Pakistan Bait-ul-Mal Scholarship, 3. PEF Scholarship) (Last Date: 15-12-2023)',
        image: 'assets/appImages/scholarships/11.png'),
    Scholarships(
        date: '',
        title:
            'Baluchistan Education Endowment Fund (BEEF) Scholarship 2023-2024 (Last Date: 20-10-2023)',
        image: 'assets/appImages/scholarships/12.png'),
    Scholarships(
        date: '',
        title:
            'Scotland Pakistan Scholarship Scheme for Young Women and Girls 2023-24 (Last Date: 30-09-2023)',
        image: 'assets/appImages/scholarships/13.png'),
    Scholarships(
        date: '',
        title:
            'USAID Merit & Needs Based Scholarship Program 2023 interview has been scheduled on 22-09-23 at 09:00 AM TO 12:00 PM in IBMS Committee Room.',
        image: 'assets/appImages/scholarships/14.png'),
    Scholarships(
        date: '',
        title:
            'USAID MNBSP for Flood Affected Student Phase II (Last Date: 16-08-2023)',
        image: 'assets/appImages/scholarships/15.png'),
    Scholarships(
        date: '',
        title:
            'Recommended Students for SWEF Scholarship 2023 (Last Date: 30-06-2023)',
        image: 'assets/appImages/scholarships/16.png'),
    Scholarships(
        date: '',
        title:
            'List of Recommended students under HEC Scholarship program 2023.',
        image: 'assets/appImages/scholarships/17.png'),
    Scholarships(
        date: '',
        title:
            'USAID Talent Hunt Program For Female Students (Last Date: 08-07-2023)',
        image: 'assets/appImages/scholarships/18.png'),
    Scholarships(
        date: '',
        title: 'SWEF Scholarship Program 2023 Interview (From: 06-03-2023)',
        image: 'assets/appImages/scholarships/19.png'),
    Scholarships(
        date: '',
        title:
            'HEC Merit & Need Based Scholarship interview (From: 20-02-2023)',
        image: 'assets/appImages/scholarships/20.png'),
    Scholarships(
        date: '',
        title: 'PEEF Scholarship 2022-23 (Last Date: 25-12-2022)',
        image: 'assets/appImages/scholarships/21.png'),
    Scholarships(
        date: '',
        title: 'Scholarships Program 2022-23 (Last Date: 10-12-2022)',
        image: 'assets/appImages/scholarships/22.png'),
  ];

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
