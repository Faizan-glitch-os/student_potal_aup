import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({
    super.key,
  });

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
        iconColor = Color.fromRGBO(255, 199, 39, 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        AddToFavorite();
      },
      icon: Icon(
        Icons.favorite,
        color: iconColor,
      ),
    );
  }
}
