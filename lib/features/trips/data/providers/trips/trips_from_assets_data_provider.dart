import 'package:flutter/services.dart';
import 'package:travel_app/features/trips/data/providers/trips/trips_data_provider.dart';

class TripsFromAssetsDataProvider implements TripsDataProvider {
  final String _jsonFilePath;

  const TripsFromAssetsDataProvider({required String jsonFilePath})
      : _jsonFilePath = jsonFilePath;

  @override
  Future<String> get tripsJson => rootBundle.loadString(_jsonFilePath);
}