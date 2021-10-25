import 'package:built_value/built_value.dart';

part 'category_model.g.dart';

abstract class CategoryModel
    implements Built<CategoryModel, CategoryModelBuilder> {
  String get id;
  String get title;
  String get imageUrl;
  CategoryModel._();
  factory CategoryModel([void Function(CategoryModelBuilder) updates]) =
      _$CategoryModel;
}
