import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectProgramWidget extends StatelessWidget {
  SelectProgramWidget(
      {super.key,
      required this.label,
      required this.optionsList,
      required this.width});

  final String label;
  final List<String> optionsList;
  final double width;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
        width: width,
        label: Text(
          label,
          style: TextStyle(fontSize: 22.sp),
        ),
        trailingIcon: Icon(CupertinoIcons.chevron_down, size: 15.h),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
              color: Color.fromRGBO(255, 199, 39, 1),
              fontSize: 22.sp,
              fontWeight: FontWeight.bold),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(255, 199, 39, 1))),
          suffixIconColor: Color.fromRGBO(255, 199, 39, 1),
        ),
        menuStyle: MenuStyle(
            side: WidgetStateProperty.all(
                const BorderSide(color: Color.fromRGBO(255, 199, 39, 1)))),
        dropdownMenuEntries: [
          ...optionsList
              .map((item) => DropdownMenuEntry(value: item, label: item))
        ]);
  }
}
