import 'package:travel_app/features/trips/data/datasources/categories_data_source.dart';
import 'package:travel_app/features/trips/data/models/category/category_model.dart';
import 'package:travel_app/features/trips/domain/entities/category/category_entity.dart';
import 'package:travel_app/features/trips/domain/repositories/categories_repository_contract.dart';

class CategoriesRepository implements CategoriesRepositoryContract {
  final CategoriesDataSource _dataSource;

  const CategoriesRepository({required CategoriesDataSource dataSource})
      : _dataSource = dataSource;

  @override
  Future<List<CategoryEntity>> get categories async {
    final List<CategoryModel> models = await _fetchFromDataSource();
    return models.map((e) => _convertToEntity(e)).toList();
  }

  Future<List<CategoryModel>> _fetchFromDataSource() async {
    return await _dataSource.getCategories();
  }

  CategoryEntity _convertToEntity(CategoryModel model) {
    return CategoryEntity(
      id: model.id,
      title: model.title,
      imageUrl: model.imageUrl,
    );
  }
}
