import 'package:e_commerce_ui/presentation/pages/home/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFloatActionButton extends StatelessWidget {
  const CustomFloatActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(60)),
        boxShadow: [
          BoxShadow(color: appBarIconButtonColor.withOpacity(0.35), spreadRadius: 9, blurRadius: 17),
        ],
      ),
      child: const CircleAvatar(
        radius: 34.0,
        backgroundColor: whiteColor,
        child: CircleAvatar(
          radius: 30,
          child: Icon(
            CupertinoIcons.bag,
            size: 38,
            color: appBarIconBackgroundColor,
          ),
        ),
      ),
    );
  }
}
