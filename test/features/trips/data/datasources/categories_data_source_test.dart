import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:travel_app/features/trips/data/datasources/categories_data_source.dart';
import 'package:travel_app/features/trips/data/providers/categories/categories_data_provider.dart';
import 'package:travel_app/features/trips/data/models/category/category_model.dart';

import '../../../../fixture_reader.dart';

class MockTripLocalStorage extends Mock implements CategoriesDataProvider {}

void main() {
  group('$CategoriesDataSource', () {
    late final CategoriesDataProvider localStorage;
    late final CategoriesDataSource sut;
    setUpAll(() {
      localStorage = MockTripLocalStorage();
      sut = CategoriesDataSource(dataProvider: localStorage);
    });

    test('should return a list of ${CategoryModel}s for a valid json schema',
        () async {
      // arrange
      final String categoryModelsJson =
          fixture('test/features/trips/fixtures/category/valid_category_models.json');
      when(() => localStorage.categoriesJson)
          .thenAnswer((_) => Future.value(categoryModelsJson));
      // act
      final result = await sut.getCategories();
      // assert
      expect(result, isA<List<CategoryModel>>());
    });

    test(
        'should throw an exception when receiving an array of incorrect json objects',
        () {
      // arrange
      final String invalidJsonSchema =
          fixture('test/features/trips/fixtures/category/invalid_category_models.json');
      when(() => localStorage.categoriesJson)
          .thenAnswer((_) => Future.value(invalidJsonSchema));
      invocation() async => await sut.getCategories();
      // assert
      expect(invocation, throwsException);
    });

    test('should throw an exception when receiving invalid json content type',
        () {
      // arrange
      final String invalidJson = fixture(
          'test/features/trips/fixtures/category/invalid_json_content_type.txt');
      when(() => localStorage.categoriesJson)
          .thenAnswer((_) => Future.value(invalidJson));
      invocation() async => await sut.getCategories();
      // assert
      expect(invocation, throwsException);
    });
  });
}
