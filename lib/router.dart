import 'package:flutter/material.dart';
import 'package:travel_app/screens/categories/categories_screen.dart';
import 'package:travel_app/screens/category_trips/category_trips_screen.dart';
import 'package:travel_app/screens/not%20found/not_found_screen.dart';

class NamedRoutes {
  static const String categories = '/';
  static const String categoryTrips = '/category-trips';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NamedRoutes.categories:
        return MaterialPageRoute(
          builder: (_) => const CategoriesScreen(),
          settings: settings,
        );
      case NamedRoutes.categoryTrips:
        return MaterialPageRoute(
          builder: (_) => const CategoryTripsScreen(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const NotFoundScreen(),
          settings: settings,
        );
    }
  }
}
