import 'package:e_commerce_ui/presentation/core/constants/texts.dart';
import 'package:e_commerce_ui/presentation/core/theme_data.dart';
import 'package:e_commerce_ui/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: eCommerceUi,
      home: const HomePage(),
      theme: customThemeData,
    );
  }
}
