import 'package:auto_route/auto_route.dart';
import 'package:travel_app/features/trips/presentation/pages/categories/widgets_barrel.dart';
import 'package:travel_app/features/trips/presentation/pages/category_trips/widgets_barrel.dart';
import 'package:travel_app/features/trips/presentation/pages/trip_details/widgets_barrel.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(
    page: CategoriesScreen,
    initial: true,
  ),
  AutoRoute(
    page: CategoryTripsScreen,
  ),
  AutoRoute(page: TripDetailsScreen)
])
class $AppRouter {}
