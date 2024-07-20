import 'package:flutter/material.dart';
import 'package:student_potal_aup/list_programs_arrays.dart';
import 'package:student_potal_aup/select_program_widget.dart';

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
      selectedProgram = mastersList;
    } else if (selectedDegree == 'M.Sc (Hons)') {
      selectedProgram = mscHonsList;
    } else if (selectedDegree == 'M.Phil') {
      selectedProgram = mphilList;
    } else if (selectedDegree == 'MS') {
      selectedProgram = msList;
    } else if (selectedDegree == 'Ph.D') {
      selectedProgram = phdList;
    } else if (selectedDegree == 'Diploma') {
      selectedProgram = diplomaList;
    }
    print(selectedProgram);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBackground(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SelectDegreeWidget(
                  setSelectedProgramHandler: SetSelectedProgram,
                  label: 'Select Degree',
                  optionsList: [
                    'Bachelors',
                    'Masters',
                    'M.Sc (Hons)',
                    'M.Phil',
                    'MS',
                    'Ph.D',
                    'Diploma',
                  ],
                ),
                SelectProgramWidget(
                    optionsList: selectedProgram, label: 'Select Program'),
                SelectProgramWidget(optionsList: [
                  '1',
                  '2',
                  '3',
                  '4',
                  '5',
                  '6',
                  '7',
                  '8',
                  '9',
                  '10',
                  '11',
                  '12'
                ], label: 'Select Semester'),
                TextField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
