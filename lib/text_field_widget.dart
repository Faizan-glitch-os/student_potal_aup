import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.textController,
      required this.label,
      required this.keyboardType});

  final TextEditingController textController;
  final String label;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      controller: textController,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(
              color: Color.fromRGBO(255, 199, 39, 1),
              fontWeight: FontWeight.bold,
              fontSize: 20.sp),
        ),
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
            width: 1.r,
            color: Color.fromRGBO(255, 199, 39, 1),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
            width: 1.r,
            color: Color.fromRGBO(255, 199, 39, 1),
          ),
        ),
      ),
    );
  }
}
