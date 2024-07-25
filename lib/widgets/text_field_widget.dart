import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.textController,
    required this.label,
    required this.keyboardType,
    required this.obscureText,
  });

  final TextEditingController textController;
  final String label;
  final TextInputType keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontFamily: 'Montserrat', color: halfWhite),
      cursorColor: golden,
      obscureText: obscureText,
      textAlign: TextAlign.center,
      controller: textController,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(color: golden, fontSize: 20.sp),
        ),
        filled: true,
        fillColor: darkGrey,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
            width: 1.r,
            color: golden,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
            width: 1.r,
            color: golden,
          ),
        ),
      ),
    );
  }
}
