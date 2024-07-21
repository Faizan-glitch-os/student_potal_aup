import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowPopOver extends StatelessWidget {
  const ShowPopOver({super.key, required this.list});

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...list.map(
            (item) => ElevatedButton(
              onPressed: () {},
              child: Text(
                item,
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
