import 'package:travel_app/features/trips/domain/entities/trip/trip_entity.dart';

abstract class TripsRepositoryContract {
  Future<List<TripEntity>> getTrips({required String categoryId});
}
