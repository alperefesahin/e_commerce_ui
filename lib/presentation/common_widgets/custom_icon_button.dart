import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({Key? key, this.iconData, required this.iconSize, required this.iconColor}) : super(key: key);

  final IconData? iconData;
  final double iconSize;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          iconData,
          size: iconSize,
          color: iconColor,
        ));
  }
}
