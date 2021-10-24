import 'package:auto_route/auto_route.dart';
import 'package:travel_app/screens/categories/widgets_barrel.dart';
import 'package:travel_app/screens/category_trips/widgets_barrel.dart';

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
