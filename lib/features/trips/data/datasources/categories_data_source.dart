import 'dart:convert';

import 'package:travel_app/features/trips/data/models/category/category_model.dart';

import '../providers/categories/categories_data_provider.dart';

class CategoriesDataSource {
  final CategoriesDataProvider _dataProvider;

  const CategoriesDataSource({required CategoriesDataProvider dataProvider})
      : _dataProvider = dataProvider,
        super();

  Future<List<CategoryModel>> getCategories() async {
    final decodedJson = await _jsonResponse();

    if (_isAJsonArray(decodedJson)) {
      return (decodedJson as List).map(_toModel).toList();
    }

    // todo: change to a custom exception
    throw Exception(
        '$CategoriesDataSource did not receive an array of json objects');
  }

  Future<dynamic> _jsonResponse() async {
    final response = await _dataProvider.categoriesJson;
    try {
      return json.decode(response);
    } catch (e) {
      // todo: change to a custom exception
      throw Exception(
          'Content received by $CategoriesDataProvider is not of type Json');
    }
  }

  bool _isAJsonArray(dynamic rawJson) {
    try {
      rawJson as List;
      return true;
    } catch (e) {
      // todo: change to a custom exception
      throw Exception(
          'Content received by $CategoriesDataProvider is not an array of json objects');
    }
  }

  CategoryModel _toModel(dynamic jsonObject) {
    try {
      return CategoryModel.fromJson(jsonObject);
    } catch (e) {
      // todo: change to a custom exception
      throw Exception(
          'json object received by $CategoriesDataProvider had incorrect schema for $CategoryModel.\n'
          'Json Object content: $jsonObject');
    }
  }
}
