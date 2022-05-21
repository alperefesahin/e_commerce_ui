import 'package:e_commerce_ui/presentation/common_widgets/app_bar_custom_icon.dart';
import 'package:e_commerce_ui/presentation/common_widgets/colors.dart';
import 'package:flutter/material.dart';

class CollectionItemImage extends StatelessWidget {
  const CollectionItemImage({Key? key, required this.imagePathOfTheModel}) : super(key: key);

  final String imagePathOfTheModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width,
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                whiteColor,
                appBackgroundColor.withOpacity(0),
                appBackgroundColor.withOpacity(0),
                appBackgroundColor.withOpacity(0.2),
                appBackgroundColor,
              ],
              begin: const FractionalOffset(0, 0),
              end: const FractionalOffset(0, 0.95),
              stops: const [0.1, 0, 0.6, 0.8, 1],
            ),
          ),
          child: Image.asset(imagePathOfTheModel),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppBarCustomIcon(
              iconData: Icons.arrow_back,
              leftPadding: 25,
              topPadding: 60,
              rightPadding: 0,
              iconSize: 30,
              iconColor: orangeColor,
              containerPadding: const EdgeInsets.all(30),
              containerBackgroundColor: appBackgroundColor,
              iconPadding: const EdgeInsets.all(0),
            ),
            const AppBarCustomIcon(
              iconData: Icons.more_horiz,
              leftPadding: 0,
              rightPadding: 25,
              topPadding: 60,
              iconSize: 30,
              iconColor: whiteColor,
              containerPadding: EdgeInsets.all(30),
              containerBackgroundColor: appBarIconButtonColor,
              iconPadding: EdgeInsets.all(0),
            ),
          ],
        ),
      ],
    );
  }
}
