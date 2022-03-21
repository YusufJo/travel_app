import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:travel_app/features/trips/data/models/trip/trip_model.dart';

void main() {
  group('$TripModel', () {
    late final TripModel _sut;
    setUpAll(() {
      _sut = const TripModel(
          id: 'm2',
          categories: [
            'c1',
          ],
          title: 'Some title',
          tripType: 'exploration',
          season: 'winter',
          imageUrl: 'images.com/image.png',
          duration: 10,
          activities: [
            'Activity 1',
            'Activity 2',
            'Activity 3',
            'Activity 4',
            'Activity 5',
          ],
          programs: [
            'program 1',
            'program 2',
            'program 3',
            'program 4',
          ],
          isInSummer: false,
          isForFamily: false,
          isInWinter: false);
    });

    test('should be parsed to json without exceptions', () {
      final result = _sut.toJson();
      expect(result, isA<Map<String, dynamic>>());
    });

    test('should be parsed from json without exceptions', () {
      final Map<String, dynamic> jsonExpected = json.decode(
          '{"id":"m2","categories":["c1"],"title":"Some title","imageUrl":"images.com/image.png","activities":["Activity 1","Activity 2","Activity 3","Activity 4","Activity 5"],"programs":["program 1","program 2","program 3","program 4"],"duration":10,"season":"winter","tripType":"exploration","isInSummer":false,"isInWinter":false,"isForFamily":false}');
      final TripModel actualModel = TripModel.fromJson(jsonExpected);
      expect(actualModel, _sut);
    });
  });
}
