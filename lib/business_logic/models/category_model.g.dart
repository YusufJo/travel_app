// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryModel extends CategoryModel {
  @override
  final String id;
  @override
  final String title;
  @override
  final String imageUrl;

  factory _$CategoryModel([void Function(CategoryModelBuilder)? updates]) =>
      (new CategoryModelBuilder()..update(updates)).build();

  _$CategoryModel._(
      {required this.id, required this.title, required this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CategoryModel', 'id');
    BuiltValueNullFieldError.checkNotNull(title, 'CategoryModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        imageUrl, 'CategoryModel', 'imageUrl');
  }

  @override
  CategoryModel rebuild(void Function(CategoryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryModelBuilder toBuilder() => new CategoryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryModel &&
        id == other.id &&
        title == other.title &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), title.hashCode), imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryModel')
          ..add('id', id)
          ..add('title', title)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class CategoryModelBuilder
    implements Builder<CategoryModel, CategoryModelBuilder> {
  _$CategoryModel? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  CategoryModelBuilder();

  CategoryModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryModel;
  }

  @override
  void update(void Function(CategoryModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryModel build() {
    final _$result = _$v ??
        new _$CategoryModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'CategoryModel', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'CategoryModel', 'title'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, 'CategoryModel', 'imageUrl'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
