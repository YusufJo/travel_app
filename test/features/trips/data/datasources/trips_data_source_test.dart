import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:travel_app/core/exceptions/data_source_exception.dart';
import 'package:travel_app/features/trips/data/datasources/trips_data_source.dart';
import 'package:travel_app/features/trips/data/models/trip/trip_model.dart';
import 'package:travel_app/features/trips/data/providers/trips/trips_data_provider.dart';

import '../../../../fixture_reader.dart';

class MockTripsDataProvider extends Mock implements TripsDataProvider {}

void main() {
  late final TripsDataProvider dataProvider;
  late final TripsDataSource sut;

  group('$TripsDataSource', () {
    setUpAll(() {
      dataProvider = MockTripsDataProvider();
      sut = TripsDataSource(dataProvider: dataProvider);
    });

    setUp(() {
      reset(dataProvider);
    });

    test(
        'should return a list of ${Exception}s and ${TripModel}s for valid json',
        () async {
      // arrange
      final String validJson = fixture(
          'test/features/trips/fixtures/trip/valid_trips_response.json');
      when(() => dataProvider.tripsJson)
          .thenAnswer((invocation) => Future.value(validJson));
      // act
      final result = await sut.getTrips();
      // assert
      expect(result, isA<List<TripModel>>());
    });

    test(
        'should throw $DataSourceException when $TripsDataProvider returns a non-json array',
        () {
      // arrange
      final String invalidJsonArray = fixture(
          'test/features/trips/fixtures/trip/invalid_trips_response.json');
      when(() => dataProvider.tripsJson)
          .thenAnswer((_) => Future.value(invalidJsonArray));
      // assert
      expect(() async => await sut.getTrips(),
          throwsA(isA<DataSourceException>()));
    });

    test(
        'should throw $DataSourceException when $TripsDataProvider returns invalid json content type',
        () {
      // arrange
      final String invalidJsonContentType =
          fixture('test/features/trips/fixtures/trip/invalid_content_type.txt');
      when(() => dataProvider.tripsJson)
          .thenAnswer((_) => Future.value(invalidJsonContentType));
      result() async => await sut.getTrips();
      // assert
      expect(result, throwsA(isA<DataSourceException>()));
    });
  });
}
