import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:student_potal_aup/list_programs_arrays.dart';
import 'package:student_potal_aup/select_program_widget.dart';
import 'package:student_potal_aup/submit_button_widget.dart';
import 'package:student_potal_aup/text_field_widget.dart';

import 'scaffold_background_widget.dart';
import 'select_degree_widget.dart';

class RenewalSlipScreen extends StatefulWidget {
  const RenewalSlipScreen({super.key});

  @override
  State<RenewalSlipScreen> createState() => _RenewalSlipScreenState();
}

class _RenewalSlipScreenState extends State<RenewalSlipScreen> {
  var selectedProgram = ['select the degree first'];

  void SetSelectedProgram(String selectedDegree) {
    if (selectedDegree == 'Bachelors') {
      setState(() {
        selectedProgram = bachelorsList;
      });
    } else if (selectedDegree == 'Masters') {
      setState(() {
        selectedProgram = mastersList;
      });
    } else if (selectedDegree == 'M.Sc (Hons)') {
      setState(() {
        selectedProgram = mscHonsList;
      });
    } else if (selectedDegree == 'M.Phil') {
      setState(() {
        selectedProgram = mphilList;
      });
    } else if (selectedDegree == 'MS') {
      setState(() {
        selectedProgram = msList;
      });
    } else if (selectedDegree == 'Ph.D') {
      setState(() {
        selectedProgram = phdList;
      });
    } else if (selectedDegree == 'Diploma') {
      setState(() {
        selectedProgram = diplomaList;
      });
    }
    print(selectedProgram);
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController rollNumber = TextEditingController();

    return Scaffold(
      body: ScaffoldBackground(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SelectDegreeWidget(
                  setSelectedProgramHandler: SetSelectedProgram,
                  label: 'Degree',
                  optionsList: degrees,
                  width: 200.w,
                ),
                SizedBox(height: 10.h),
                SelectProgramWidget(
                  optionsList: selectedProgram,
                  label: 'Program',
                  width: 320.w,
                ),
                SizedBox(height: 10.h),
                SelectProgramWidget(
                  optionsList: semesterNo,
                  label: 'Semester',
                  width: 180.w,
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 100.w,
                  child: TextFieldWidget(
                    label: 'Roll No',
                    textController: rollNumber,
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(height: 50.h),
                SubmitButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
