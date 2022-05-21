import 'package:e_commerce_ui/presentation/common_widgets/app_bar_custom_icon.dart';
import 'package:e_commerce_ui/presentation/common_widgets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownActionButtons extends StatelessWidget {
  const DropDownActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100, right: 25),
      child: Stack(
        children: [
          Container(
            width: 60,
            height: 250,
            decoration: BoxDecoration(color: lightGreyColor, borderRadius: const BorderRadius.all(Radius.circular(30))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 5),
            child: Column(
              children: const [
                AppBarCustomIcon(
                  bottomPadding: 0,
                  iconData: Icons.more_horiz,
                  leftPadding: 0,
                  rightPadding: 0,
                  topPadding: 0,
                  iconSize: 30,
                  iconColor: whiteColor,
                  containerPadding: EdgeInsets.all(25),
                  containerBackgroundColor: appBarIconButtonColor,
                  iconPadding: EdgeInsets.all(0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Icon(
                    CupertinoIcons.arrow_right_arrow_left,
                    color: whiteColor,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Icon(
                    CupertinoIcons.heart,
                    color: whiteColor,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Icon(
                    Icons.comment,
                    color: whiteColor,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Icon(
                    CupertinoIcons.share,
                    color: whiteColor,
                    size: 30,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
