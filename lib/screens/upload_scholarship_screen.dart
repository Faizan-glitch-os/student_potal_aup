import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/colors.dart';
import 'package:student_potal_aup/widgets/text_field_widget.dart';

class UploadScholarshipScreen extends StatelessWidget {
  const UploadScholarshipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController dateController = TextEditingController();
    final TextEditingController titleController = TextEditingController();

    return Scaffold(
      backgroundColor: halfWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Uploading Notification'),
            TextFieldWidget(
                textController: dateController,
                label: 'Date',
                keyboardType: TextInputType.text,
                obscureText: false),
            TextFieldWidget(
                textController: titleController,
                label: 'Date',
                keyboardType: TextInputType.text,
                obscureText: false),
          ],
        ),
      ),
    );
  }
}
