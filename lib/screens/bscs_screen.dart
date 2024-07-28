import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/colors.dart';
import 'package:student_potal_aup/list_programs_arrays.dart';

import '../widgets/all_subjects.dart';

class BscsScreen extends StatelessWidget {
  const BscsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: halfWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AllSubjects(
                subjects: bs1,
                semester: 'Semester-1',
              ),
              AllSubjects(
                subjects: bs2,
                semester: 'Semester-2',
              ),
              AllSubjects(
                subjects: bs3,
                semester: 'Semester-3',
              ),
              AllSubjects(
                subjects: bs4,
                semester: 'Semester-4',
              ),
              AllSubjects(
                subjects: bs5,
                semester: 'Semester-5',
              ),
              AllSubjects(
                subjects: bs6,
                semester: 'Semester-6',
              ),
              AllSubjects(
                subjects: bs7,
                semester: 'Semester-7',
              ),
              AllSubjects(
                subjects: bs8,
                semester: 'Semester-8',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
