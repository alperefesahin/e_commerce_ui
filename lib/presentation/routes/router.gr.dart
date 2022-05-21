// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../pages/details/details_page.dart' as _i2;
import '../pages/home/home_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    DetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.DetailsPage(
              key: args.key,
              collectionItemName: args.collectionItemName,
              collectionItemPrice: args.collectionItemPrice,
              imagePathOfTheModel: args.imagePathOfTheModel));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeRoute.name, path: '/'),
        _i3.RouteConfig(DetailsRoute.name, path: '/details-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.DetailsPage]
class DetailsRoute extends _i3.PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute(
      {_i4.Key? key,
      required String collectionItemName,
      required String collectionItemPrice,
      required String imagePathOfTheModel})
      : super(DetailsRoute.name,
            path: '/details-page',
            args: DetailsRouteArgs(
                key: key,
                collectionItemName: collectionItemName,
                collectionItemPrice: collectionItemPrice,
                imagePathOfTheModel: imagePathOfTheModel));

  static const String name = 'DetailsRoute';
}

class DetailsRouteArgs {
  const DetailsRouteArgs(
      {this.key,
      required this.collectionItemName,
      required this.collectionItemPrice,
      required this.imagePathOfTheModel});

  final _i4.Key? key;

  final String collectionItemName;

  final String collectionItemPrice;

  final String imagePathOfTheModel;

  @override
  String toString() {
    return 'DetailsRouteArgs{key: $key, collectionItemName: $collectionItemName, collectionItemPrice: $collectionItemPrice, imagePathOfTheModel: $imagePathOfTheModel}';
  }
}
