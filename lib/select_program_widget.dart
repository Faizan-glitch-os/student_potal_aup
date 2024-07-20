import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SelectProgramWidget extends StatelessWidget {
  SelectProgramWidget(
      {super.key, required this.label, required this.optionsList});

  final String label;
  final List<String> optionsList;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
        label: Text(label),
        trailingIcon: const Icon(CupertinoIcons.chevron_down, size: 15),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle:
              TextStyle(color: Color.fromRGBO(255, 199, 39, 1), fontSize: 20),
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
