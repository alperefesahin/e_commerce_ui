import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_ui/presentation/pages/details/details_page.dart';
import 'package:e_commerce_ui/presentation/pages/home/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: DetailsPage),
  ],
)
class $AppRouter {}
