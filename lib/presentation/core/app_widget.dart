import 'package:e_commerce_ui/presentation/core/constants/texts.dart';
import 'package:e_commerce_ui/presentation/core/theme_data.dart';
import 'package:e_commerce_ui/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: eCommerceUi,
      theme: customThemeData,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
