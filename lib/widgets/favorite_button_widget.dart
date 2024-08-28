import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_potal_aup/colors.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({
    super.key,
    required this.date,
    required this.title,
    required this.image,
  });

  final String date;
  final String title;
  final String image;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool icon = true;
  Color iconColor = Colors.white;

  void addToFavorite() {
    icon = !icon;
    if (icon == true) {
      setState(() {
        iconColor = Colors.white;
      });
    } else {
      setState(() {
        iconColor = golden;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: golden.withOpacity(.6),
      onPressed: () {
        addToFavorite();
      },
      icon: Icon(
        Icons.favorite,
        color: iconColor,
        size: 25.r,
      ),
    );
  }
}
