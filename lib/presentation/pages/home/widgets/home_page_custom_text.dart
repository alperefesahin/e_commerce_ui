import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomePageCustomText extends StatelessWidget {
  const HomePageCustomText({Key? key, required this.text, this.textStyle, required this.minFontSize, required this.maxFontSize}) : super(key: key);

  final String text;
  final TextStyle? textStyle;
  final double minFontSize;
  final double maxFontSize;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      minFontSize: minFontSize,
      maxFontSize: maxFontSize,
      style: textStyle,
    );
  }
}
