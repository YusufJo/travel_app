// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../models/category_model.dart' as _i5;
import '../screens/categories/categories_screen.dart' as _i1;
import '../screens/category_trips/category_trips_screen.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    CategoriesScreenRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.CategoriesScreen());
    },
    CategoryTripsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryTripsScreenRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.CategoryTripsScreen(key: args.key, model: args.model));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(CategoriesScreenRoute.name, path: '/'),
        _i3.RouteConfig(CategoryTripsScreenRoute.name,
            path: '/category-trips-screen')
      ];
}

/// generated route for [_i1.CategoriesScreen]
class CategoriesScreenRoute extends _i3.PageRouteInfo<void> {
  const CategoriesScreenRoute() : super(name, path: '/');

  static const String name = 'CategoriesScreenRoute';
}

/// generated route for [_i2.CategoryTripsScreen]
class CategoryTripsScreenRoute
    extends _i3.PageRouteInfo<CategoryTripsScreenRouteArgs> {
  CategoryTripsScreenRoute({_i4.Key? key, required _i5.CategoryModel model})
      : super(name,
            path: '/category-trips-screen',
            args: CategoryTripsScreenRouteArgs(key: key, model: model));

  static const String name = 'CategoryTripsScreenRoute';
}

class CategoryTripsScreenRouteArgs {
  const CategoryTripsScreenRouteArgs({this.key, required this.model});

  final _i4.Key? key;

  final _i5.CategoryModel model;
}
