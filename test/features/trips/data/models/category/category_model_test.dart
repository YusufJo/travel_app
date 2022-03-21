import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:travel_app/features/trips/data/models/category/category_model.dart';

void main() {
  group('$CategoryModel', () {
    late final CategoryModel _sut;
    setUpAll(() {
      _sut = const CategoryModel(
          id: 'id1',
          imageUrl: 'images.com/image.jpg',
          title: 'Awesome category');
    });

    test('should be parsed to json without exceptions', () {
      final result = _sut.toJson();
      expect(result, isA<Map<String, dynamic>>());
    });

    test('should be able to create model object from json', () {
      final Map<String, dynamic> jsonInput = json.decode(
          '{"id":"id5","title":"Awesome category 5","imageUrl":"images.com/image5.jpg"}');
      const CategoryModel model = CategoryModel(
        id: 'id5',
        imageUrl: 'images.com/image5.jpg',
        title: 'Awesome category 5',
      );
      final CategoryModel actual = CategoryModel.fromJson(jsonInput);
      expect(actual, model);
    });
  });
}
