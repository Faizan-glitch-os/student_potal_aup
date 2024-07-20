import 'package:flutter/material.dart';
import 'package:student_potal_aup/list_programs_arrays.dart';
import 'package:student_potal_aup/select_program_widget.dart';

import 'scaffold_background_widget.dart';
import 'select_degree_widget.dart';

class RenewalSlipScreen extends StatelessWidget {
  const RenewalSlipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBackground(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SelectDegreeWidget(
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
                // SelectProgramWidget(
                //     label: 'Select Program',
                //     bachelorsList: bachelorsList,
                //     mastersList: mastersList,
                //     mscHonsList: mscHonsList,
                //     mphilList: mphilList,
                //     msList: msList,
                //     phdList: phdList,
                //     diplomaList: diplomaList),
                // SelectDegreeWidget(optionsList: [
                //   '1',
                //   '2',
                //   '3',
                //   '4',
                //   '5',
                //   '6',
                //   '7',
                //   '8',
                //   '9',
                //   '10',
                //   '11',
                //   '12'
                // ], label: 'Semester No'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
