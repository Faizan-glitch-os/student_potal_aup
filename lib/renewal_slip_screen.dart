import 'package:flutter/material.dart';

import 'scaffold_background_widget.dart';
import 'select_options_widget.dart';

class RenewalSlipScreen extends StatelessWidget {
  const RenewalSlipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScaffoldBackground(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SelectOptionsWidget(
                  optionsList: [
                    'Bachelors, Masters, M.Sc (Hons), M.Phil, MS, Ph.D, Diploma'
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
