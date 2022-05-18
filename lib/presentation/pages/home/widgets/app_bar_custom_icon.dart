import 'package:e_commerce_ui/presentation/pages/home/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class AppBarCustomIcon extends StatelessWidget {
  const AppBarCustomIcon(
      {Key? key,
      this.iconData,
      required this.leftPadding,
      required this.rightPadding})
      : super(key: key);

  final IconData? iconData;
  final double leftPadding;
  final double rightPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding, right: rightPadding, top: 20),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: appBarIconBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
          ),
          Icon(iconData, color: appBarIconButtonColor, size: 30)
        ],
      ),
    );
  }
}
