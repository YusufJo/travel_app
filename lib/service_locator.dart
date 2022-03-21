import 'package:get_it/get_it.dart';
import 'package:travel_app/features/trips/data/datasources/categories_data_source.dart';
import 'package:travel_app/features/trips/data/datasources/trips_data_source.dart';
import 'package:travel_app/features/trips/data/providers/categories/categories_data_provider.dart';
import 'package:travel_app/features/trips/data/providers/categories/categories_from_assets_provider.dart';
import 'package:travel_app/features/trips/data/providers/trips/trips_data_provider.dart';
import 'package:travel_app/features/trips/data/providers/trips/trips_from_assets_data_provider.dart';
import 'package:travel_app/features/trips/data/repositories/categories_repository.dart';
import 'package:travel_app/features/trips/domain/repositories/categories_repository_contract.dart';
import 'package:travel_app/features/trips/domain/repositories/trips_repository_contract.dart';

import 'features/trips/data/repositories/trips_repository.dart';
import 'features/trips/presentation/route/router.gr.dart';

void setupGetIt() {
  GetIt.I.registerSingleton<AppRouter>(AppRouter());

  // categories
  GetIt.I.registerLazySingleton<CategoriesDataProvider>(() =>
      const CategoriesFromAssetsDataProvider(
          jsonFilePath: 'assets/models/category_models.json'));
  GetIt.I.registerLazySingleton<CategoriesDataSource>(
      () => CategoriesDataSource(dataProvider: GetIt.I()));
  GetIt.I.registerLazySingleton<CategoriesRepositoryContract>(
      () => CategoriesRepository(dataSource: GetIt.I()));

  // trips
  GetIt.I.registerLazySingleton<TripsDataProvider>(() =>
      const TripsFromAssetsDataProvider(
          jsonFilePath: 'assets/models/trip_models.json'));
  GetIt.I.registerLazySingleton<TripsDataSource>(
      () => TripsDataSource(dataProvider: GetIt.I()));
  GetIt.I.registerLazySingleton<TripsRepositoryContract>(
      () => TripsRepository(dataSource: GetIt.I()));
}
