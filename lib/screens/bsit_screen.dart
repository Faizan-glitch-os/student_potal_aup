import 'package:flutter/material.dart';

import 'package:student_potal_aup/colors.dart';
import 'package:student_potal_aup/list_programs_arrays.dart';

import '../widgets/all_subjects.dart';

class BsitScreen extends StatelessWidget {
  const BsitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: halfWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AllSubjects(
                subjects: it1,
                semester: 'Semester-1',
              ),
              AllSubjects(
                subjects: it2,
                semester: 'Semester-2',
              ),
              AllSubjects(
                subjects: it3,
                semester: 'Semester-3',
              ),
              AllSubjects(
                subjects: it4,
                semester: 'Semester-4',
              ),
              AllSubjects(
                subjects: it5,
                semester: 'Semester-5',
              ),
              AllSubjects(
                subjects: it6,
                semester: 'Semester-6',
              ),
              AllSubjects(
                subjects: it7,
                semester: 'Semester-7',
              ),
              AllSubjects(
                subjects: it8,
                semester: 'Semester-8',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
