import 'package:flutter/services.dart';
import 'package:travel_app/features/trips/data/providers/categories/categories_data_provider.dart';

class CategoriesFromAssetsDataProvider implements CategoriesDataProvider {
  final String _jsonFilePath;

  const CategoriesFromAssetsDataProvider({required String jsonFilePath})
      : _jsonFilePath = jsonFilePath;

  @override
  Future<String> get categoriesJson => rootBundle.loadString(_jsonFilePath);
}
