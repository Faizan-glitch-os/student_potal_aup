import 'package:flutter/material.dart';
import 'package:student_potal_aup/colors.dart';

import '../data_model.dart';
import '../widgets/show_news_widget.dart';

class ScholarshipScreen extends StatelessWidget {
  ScholarshipScreen({super.key});

  final scholarshipsData = [
    Scholarships(
        date: '10/06/2024',
        title:
            'Recommended Students for SWEF Scholarship 2024 (Last Date: 10-05-2024)',
        image: 'assets/appImages/scholarships/1.png'),
    Scholarships(
        date: '09/06/2024',
        title:
            'Quaid - e - Azam Aligarh Scholarship Trust (Last Date: 31-05-2024)',
        image: 'assets/appImages/scholarships/2.png'),
    Scholarships(
        date: '08/06/2024',
        title:
            'Notice for Ehsaas Scholarship Recipients regarding Coursera International',
        image: 'assets/appImages/scholarships/3.png'),
    Scholarships(
        date: '07/06/2024',
        title: 'Akora Seeds Scholarship interview to be held on 21-05-2024',
        image: 'assets/appImages/scholarships/4.png'),
    Scholarships(
        date: '06/06/2024',
        title: 'KPEF Scholarship 2023-24 interview to be held on 21-05-2024',
        image: 'assets/appImages/scholarships/5.png'),
    Scholarships(
        date: '05/06/2024',
        title: 'Akora Seeds Scholarship Program (Last Date: 17-04-2024)',
        image: 'assets/appImages/scholarships/6.png'),
    Scholarships(
        date: '04/06/2024',
        title: 'Aspire Scholarship Program 2023-24 (Last Date: 21-03-2024)',
        image: 'assets/appImages/scholarships/7.png'),
    Scholarships(
        date: '03/06/2024',
        title: 'Khyber Pakhtunkhwa Education Foundation Scholarship 2023-24',
        image: 'assets/appImages/scholarships/8.png'),
    Scholarships(
        date: '02/06/2024',
        title:
            'Merged Areas Reserved Scholarship 2023-2024 (Last Date: 06-02-2024)',
        image: 'assets/appImages/scholarships/9.png'),
    Scholarships(
        date: '01/06/2024',
        title: 'SWEF Scholarship Program 2023 Interview (From: 08-01-2024)',
        image: 'assets/appImages/scholarships/10.png'),
    Scholarships(
        date: '31/05/2024',
        title:
            'Scholarship Notice (1. SWEF Scholarship, 2. Pakistan Bait-ul-Mal Scholarship, 3. PEF Scholarship) (Last Date: 15-12-2023)',
        image: 'assets/appImages/scholarships/11.png'),
    Scholarships(
        date: '30/05/2024',
        title:
            'Baluchistan Education Endowment Fund (BEEF) Scholarship 2023-2024 (Last Date: 20-10-2023)',
        image: 'assets/appImages/scholarships/12.png'),
    Scholarships(
        date: '29/05/2024',
        title:
            'Scotland Pakistan Scholarship Scheme for Young Women and Girls 2023-24 (Last Date: 30-09-2023)',
        image: 'assets/appImages/scholarships/13.png'),
    Scholarships(
        date: '28/05/2024',
        title:
            'USAID Merit & Needs Based Scholarship Program 2023 interview has been scheduled on 22-09-23 at 09:00 AM TO 12:00 PM in IBMS Committee Room.',
        image: 'assets/appImages/scholarships/14.png'),
    Scholarships(
        date: '27/05/2024',
        title:
            'USAID MNBSP for Flood Affected Student Phase II (Last Date: 16-08-2023)',
        image: 'assets/appImages/scholarships/15.png'),
    Scholarships(
        date: '26/05/2024',
        title:
            'Recommended Students for SWEF Scholarship 2023 (Last Date: 30-06-2023)',
        image: 'assets/appImages/scholarships/16.png'),
    Scholarships(
        date: '25/05/2024',
        title:
            'List of Recommended students under HEC Scholarship program 2023.',
        image: 'assets/appImages/scholarships/17.png'),
    Scholarships(
        date: '24/05/2024',
        title:
            'USAID Talent Hunt Program For Female Students (Last Date: 08-07-2023)',
        image: 'assets/appImages/scholarships/18.png'),
    Scholarships(
        date: '23/05/2024',
        title: 'SWEF Scholarship Program 2023 Interview (From: 06-03-2023)',
        image: 'assets/appImages/scholarships/19.png'),
    Scholarships(
        date: '22/05/2024',
        title:
            'HEC Merit & Need Based Scholarship interview (From: 20-02-2023)',
        image: 'assets/appImages/scholarships/20.png'),
    Scholarships(
        date: '21/05/2024',
        title: 'PEEF Scholarship 2022-23 (Last Date: 25-12-2022)',
        image: 'assets/appImages/scholarships/21.png'),
    Scholarships(
        date: '20/05/2024',
        title: 'Scholarships Program 2022-23 (Last Date: 10-12-2022)',
        image: 'assets/appImages/scholarships/22.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: halfWhite,
      body: ShowNewsWidget(newsData: scholarshipsData),
    );
  }
}
