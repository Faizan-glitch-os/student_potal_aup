import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/submit_button_widget.dart';

import 'list_programs_arrays.dart';
import 'scaffold_background_widget.dart';
import 'select_degree_widget.dart';
import 'select_program_widget.dart';
import 'text_field_widget.dart';

class DepositSlipScreen extends StatefulWidget {
  const DepositSlipScreen({super.key});

  @override
  State<DepositSlipScreen> createState() => _DepositSlipScreenState();
}

class _DepositSlipScreenState extends State<DepositSlipScreen> {
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
    final TextEditingController name = TextEditingController();
    final TextEditingController rollNumber = TextEditingController();
    final TextEditingController sonOrDaughter = TextEditingController();
    final TextEditingController cnic = TextEditingController();
    final TextEditingController phoneNo = TextEditingController();

    return Scaffold(
      body: ScaffoldBackground(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 100.h),
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
                SelectProgramWidget(
                    label: 'Select Document',
                    optionsList: selectedProgram,
                    width: 320.w),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 280.w,
                  child: TextFieldWidget(
                      textController: name,
                      label: 'Name',
                      keyboardType: TextInputType.name),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 280.w,
                  child: TextFieldWidget(
                      textController: sonOrDaughter,
                      label: 'Son/Daughter of',
                      keyboardType: TextInputType.name),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 200.w,
                  child: TextFieldWidget(
                      textController: cnic,
                      label: 'CNIC',
                      keyboardType: TextInputType.number),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 200.w,
                  child: TextFieldWidget(
                      textController: phoneNo,
                      label: 'Phone No',
                      keyboardType: TextInputType.phone),
                ),
                SizedBox(height: 50.h),
                SubmitButtonWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
