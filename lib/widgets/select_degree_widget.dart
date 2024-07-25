import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectDegreeWidget extends StatelessWidget {
  const SelectDegreeWidget(
      {super.key,
      required this.optionsList,
      required this.label,
      required this.setSelectedProgramHandler,
      required this.width});

  final List<String> optionsList;
  final String label;
  final Function setSelectedProgramHandler;
  final double width;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
        width: width,
        onSelected: (v) {
          setSelectedProgramHandler(v);
          print(v);
        },
        label: Text(label),
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
          ...optionsList.map(
            (item) {
              return DropdownMenuEntry(value: item, label: item);
            },
          ),
        ]);
  }
}
