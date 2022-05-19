import 'package:flutter/material.dart';

class AppBarCustomIcon extends StatelessWidget {
  const AppBarCustomIcon(
      {Key? key,
      this.iconData,
      required this.leftPadding,
      required this.rightPadding,
      required this.iconSize,
      required this.iconColor,
      required this.containerPadding,
      required this.containerBackgroundColor,
      required this.iconPadding,
      this.containerBoxShadow})
      : super(key: key);

  final IconData? iconData;
  final Color iconColor;
  final Color containerBackgroundColor;
  final double leftPadding;
  final double rightPadding;
  final double iconSize;
  final EdgeInsetsGeometry containerPadding;
  final EdgeInsetsGeometry iconPadding;
  final List<BoxShadow>? containerBoxShadow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding, right: rightPadding, top: 20),
      child: InkWell(
        onTap: () {},
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: containerPadding,
              decoration: BoxDecoration(color: containerBackgroundColor, borderRadius: const BorderRadius.all(Radius.circular(50)), boxShadow: containerBoxShadow),
            ),
            Padding(
              padding: iconPadding,
              child: Icon(iconData, color: iconColor, size: iconSize),
            )
          ],
        ),
      ),
    );
  }
}
