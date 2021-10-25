// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../business_logic/models/category_model.dart' as _i6;
import '../screens/categories/widgets_barrel.dart' as _i1;
import '../screens/category_trips/widgets_barrel.dart' as _i2;
import '../screens/trip_details/widgets_barrel.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    CategoriesScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.CategoriesScreen());
    },
    CategoryTripsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryTripsScreenRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.CategoryTripsScreen(
              key: args.key, categoryModel: args.categoryModel));
    },
    TripDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<TripDetailsScreenRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.TripDetailsScreen(key: args.key, title: args.title));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(CategoriesScreenRoute.name, path: '/'),
        _i4.RouteConfig(CategoryTripsScreenRoute.name,
            path: '/category-trips-screen'),
        _i4.RouteConfig(TripDetailsScreenRoute.name,
            path: '/trip-details-screen')
      ];
}

/// generated route for [_i1.CategoriesScreen]
class CategoriesScreenRoute extends _i4.PageRouteInfo<void> {
  const CategoriesScreenRoute() : super(name, path: '/');

  static const String name = 'CategoriesScreenRoute';
}

/// generated route for [_i2.CategoryTripsScreen]
class CategoryTripsScreenRoute
    extends _i4.PageRouteInfo<CategoryTripsScreenRouteArgs> {
  CategoryTripsScreenRoute(
      {_i5.Key? key, required _i6.CategoryModel categoryModel})
      : super(name,
            path: '/category-trips-screen',
            args: CategoryTripsScreenRouteArgs(
                key: key, categoryModel: categoryModel));

  static const String name = 'CategoryTripsScreenRoute';
}

class CategoryTripsScreenRouteArgs {
  const CategoryTripsScreenRouteArgs({this.key, required this.categoryModel});

  final _i5.Key? key;

  final _i6.CategoryModel categoryModel;
}

/// generated route for [_i3.TripDetailsScreen]
class TripDetailsScreenRoute
    extends _i4.PageRouteInfo<TripDetailsScreenRouteArgs> {
  TripDetailsScreenRoute({_i5.Key? key, required String title})
      : super(name,
            path: '/trip-details-screen',
            args: TripDetailsScreenRouteArgs(key: key, title: title));

  static const String name = 'TripDetailsScreenRoute';
}

class TripDetailsScreenRouteArgs {
  const TripDetailsScreenRouteArgs({this.key, required this.title});

  final _i5.Key? key;

  final String title;
}
