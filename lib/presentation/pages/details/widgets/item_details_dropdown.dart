import 'package:auto_size_text/auto_size_text.dart';
import 'package:e_commerce_ui/presentation/common_widgets/colors.dart';
import 'package:flutter/cupertino.dart';

class ItemDetailsDropDown extends StatelessWidget {
  const ItemDetailsDropDown({Key? key, required this.customWidget, required this.text}) : super(key: key);

  final Widget customWidget;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 20),
      child: Row(
        children: [
          AutoSizeText(
            text,
            minFontSize: 20,
            maxFontSize: 25,
            style: const TextStyle(color: greyColor, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: customWidget,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(CupertinoIcons.chevron_down, size: 20, color: greyColor),
          )
        ],
      ),
    );
  }
}
