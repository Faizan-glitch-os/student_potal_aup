import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  Color iconColor = Colors.black;

  void AddToFavorite() {
    icon = !icon;
    if (icon == true) {
      setState(() {
        iconColor = Colors.black;
      });
    } else {
      setState(() {
        iconColor = const Color.fromRGBO(255, 199, 39, 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: const Color.fromRGBO(255, 199, 39, 0.3),
      onPressed: () {
        AddToFavorite();
      },
      icon: Icon(
        Icons.favorite,
        color: iconColor,
        size: 25.r,
      ),
    );
  }
}
