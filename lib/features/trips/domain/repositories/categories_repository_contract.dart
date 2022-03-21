import 'package:travel_app/features/trips/domain/entities/category/category_entity.dart';

abstract class CategoriesRepositoryContract {
  Future<List<CategoryEntity>> get categories;
}
