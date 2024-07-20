import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SelectDegreeWidget extends StatelessWidget {
  const SelectDegreeWidget({
    super.key,
    required this.optionsList,
    required this.label,
  });

  final List<String> optionsList;
  final String label;

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
          ...optionsList.map((item) {
            return DropdownMenuEntry(value: item, label: item);
          })
        ]);
  }
}
