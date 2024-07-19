import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SelectOptionsWidget extends StatelessWidget {
  const SelectOptionsWidget({super.key, required this.optionsList});

  final List<String> optionsList;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
        label: const Text('Select Degree'),
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
