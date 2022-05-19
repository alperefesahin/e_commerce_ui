import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:e_commerce_ui/presentation/pages/home/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
        inactiveColor: greyColor,
        activeColor: appBarIconButtonColor,
        iconSize: 25,
        elevation: 75,
        notchMargin: 15,
        icons: const [Icons.home, CupertinoIcons.folder, CupertinoIcons.printer, CupertinoIcons.heart],
        activeIndex: 0,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (int value) {}
        //other params
        );
  }
}
