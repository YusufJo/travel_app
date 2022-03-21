import 'package:travel_app/features/trips/data/models/trip/trip_model.dart';
import 'package:travel_app/features/trips/domain/entities/trip/trip_entity.dart';

import '../../domain/repositories/trips_repository_contract.dart';
import '../datasources/trips_data_source.dart';

class TripsRepository implements TripsRepositoryContract {
  final TripsDataSource _dataSource;

  const TripsRepository({required TripsDataSource dataSource})
      : _dataSource = dataSource;

  Future<List<TripModel>> _fetchFromDataSource() async {
    final result = await _dataSource.getTrips();
    return result;
  }

  TripEntity _convertToEntity(TripModel model) {
    return TripEntity(
        id: model.id,
        title: model.title,
        imageUrl: model.imageUrl,
        activities: model.activities,
        programs: model.programs,
        duration: model.duration,
        season: Season.values.firstWhere((value) => value.name == model.season),
        tripType:
            TripType.values.firstWhere((value) => value.name == model.tripType),
        isInSummer: model.isInSummer,
        isInWinter: model.isInWinter,
        isForFamily: model.isForFamily);
  }

  @override
  Future<List<TripEntity>> getTrips({required String categoryId}) async {
    final List<TripModel> models = await _fetchFromDataSource();
    return models
        .where((e) => e.categories.contains(categoryId))
        .map((e) => _convertToEntity(e))
        .toList();
  }
}
