import 'package:e_commerce_ui/presentation/pages/home/constants/colors.dart';
import 'package:e_commerce_ui/presentation/pages/home/constants/texts.dart';
import 'package:e_commerce_ui/presentation/pages/home/widgets/categories.dart';
import 'package:e_commerce_ui/presentation/pages/home/widgets/home_page_custom_icon_button.dart';
import 'package:e_commerce_ui/presentation/pages/home/widgets/home_page_custom_text.dart';
import 'package:flutter/cupertino.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              HomePageCustomText(
                text: collections,
                minFontSize: 30,
                maxFontSize: 35,
                textStyle: TextStyle(fontWeight: FontWeight.w600),
              ),
              HomePageCustomIconButton(
                iconData: CupertinoIcons.slider_horizontal_3,
                iconSize: 33,
                iconColor: homePageHorizontalSliderColor,
              )
            ],
          ),
        ),
        const Collections()
      ],
    );
  }
}
