import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/colors.dart';

class TextFieldWidget extends StatefulWidget {
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
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontFamily: 'Montserrat', color: halfWhite),
      cursorColor: golden,
      obscureText: widget.obscureText,
      textAlign: TextAlign.center,
      controller: widget.textController,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        label: Text(
          widget.label,
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
