import 'package:auto_route/auto_route.dart';
import 'package:travel_app/screens/categories/categories_screen.dart';
import 'package:travel_app/screens/category_trips/category_trips_screen.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(
    page: CategoriesScreen,
    initial: true,
  ),
  AutoRoute(
    page: CategoryTripsScreen,
  )
])
class $AppRouter {}
