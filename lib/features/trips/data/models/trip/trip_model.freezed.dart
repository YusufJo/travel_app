// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TripModel _$TripModelFromJson(Map<String, dynamic> json) {
  return _TripModel.fromJson(json);
}

/// @nodoc
class _$TripModelTearOff {
  const _$TripModelTearOff();

  _TripModel call(
      {required String id,
      required String title,
      required String imageUrl,
      required List<String> categories,
      required List<String> activities,
      required List<String> programs,
      required int duration,
      required String season,
      required String tripType,
      required bool isInSummer,
      required bool isInWinter,
      required bool isForFamily}) {
    return _TripModel(
      id: id,
      title: title,
      imageUrl: imageUrl,
      categories: categories,
      activities: activities,
      programs: programs,
      duration: duration,
      season: season,
      tripType: tripType,
      isInSummer: isInSummer,
      isInWinter: isInWinter,
      isForFamily: isForFamily,
    );
  }

  TripModel fromJson(Map<String, Object?> json) {
    return TripModel.fromJson(json);
  }
}

/// @nodoc
const $TripModel = _$TripModelTearOff();

/// @nodoc
mixin _$TripModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  List<String> get activities => throw _privateConstructorUsedError;
  List<String> get programs => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get season => throw _privateConstructorUsedError;
  String get tripType => throw _privateConstructorUsedError;
  bool get isInSummer => throw _privateConstructorUsedError;
  bool get isInWinter => throw _privateConstructorUsedError;
  bool get isForFamily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripModelCopyWith<TripModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripModelCopyWith<$Res> {
  factory $TripModelCopyWith(TripModel value, $Res Function(TripModel) then) =
      _$TripModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String imageUrl,
      List<String> categories,
      List<String> activities,
      List<String> programs,
      int duration,
      String season,
      String tripType,
      bool isInSummer,
      bool isInWinter,
      bool isForFamily});
}

/// @nodoc
class _$TripModelCopyWithImpl<$Res> implements $TripModelCopyWith<$Res> {
  _$TripModelCopyWithImpl(this._value, this._then);

  final TripModel _value;
  // ignore: unused_field
  final $Res Function(TripModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? categories = freezed,
    Object? activities = freezed,
    Object? programs = freezed,
    Object? duration = freezed,
    Object? season = freezed,
    Object? tripType = freezed,
    Object? isInSummer = freezed,
    Object? isInWinter = freezed,
    Object? isForFamily = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      programs: programs == freezed
          ? _value.programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      season: season == freezed
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
      tripType: tripType == freezed
          ? _value.tripType
          : tripType // ignore: cast_nullable_to_non_nullable
              as String,
      isInSummer: isInSummer == freezed
          ? _value.isInSummer
          : isInSummer // ignore: cast_nullable_to_non_nullable
              as bool,
      isInWinter: isInWinter == freezed
          ? _value.isInWinter
          : isInWinter // ignore: cast_nullable_to_non_nullable
              as bool,
      isForFamily: isForFamily == freezed
          ? _value.isForFamily
          : isForFamily // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TripModelCopyWith<$Res> implements $TripModelCopyWith<$Res> {
  factory _$TripModelCopyWith(
          _TripModel value, $Res Function(_TripModel) then) =
      __$TripModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String imageUrl,
      List<String> categories,
      List<String> activities,
      List<String> programs,
      int duration,
      String season,
      String tripType,
      bool isInSummer,
      bool isInWinter,
      bool isForFamily});
}

/// @nodoc
class __$TripModelCopyWithImpl<$Res> extends _$TripModelCopyWithImpl<$Res>
    implements _$TripModelCopyWith<$Res> {
  __$TripModelCopyWithImpl(_TripModel _value, $Res Function(_TripModel) _then)
      : super(_value, (v) => _then(v as _TripModel));

  @override
  _TripModel get _value => super._value as _TripModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
    Object? categories = freezed,
    Object? activities = freezed,
    Object? programs = freezed,
    Object? duration = freezed,
    Object? season = freezed,
    Object? tripType = freezed,
    Object? isInSummer = freezed,
    Object? isInWinter = freezed,
    Object? isForFamily = freezed,
  }) {
    return _then(_TripModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      programs: programs == freezed
          ? _value.programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      season: season == freezed
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
      tripType: tripType == freezed
          ? _value.tripType
          : tripType // ignore: cast_nullable_to_non_nullable
              as String,
      isInSummer: isInSummer == freezed
          ? _value.isInSummer
          : isInSummer // ignore: cast_nullable_to_non_nullable
              as bool,
      isInWinter: isInWinter == freezed
          ? _value.isInWinter
          : isInWinter // ignore: cast_nullable_to_non_nullable
              as bool,
      isForFamily: isForFamily == freezed
          ? _value.isForFamily
          : isForFamily // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TripModel implements _TripModel {
  const _$_TripModel(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.categories,
      required this.activities,
      required this.programs,
      required this.duration,
      required this.season,
      required this.tripType,
      required this.isInSummer,
      required this.isInWinter,
      required this.isForFamily});

  factory _$_TripModel.fromJson(Map<String, dynamic> json) =>
      _$$_TripModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final List<String> categories;
  @override
  final List<String> activities;
  @override
  final List<String> programs;
  @override
  final int duration;
  @override
  final String season;
  @override
  final String tripType;
  @override
  final bool isInSummer;
  @override
  final bool isInWinter;
  @override
  final bool isForFamily;

  @override
  String toString() {
    return 'TripModel(id: $id, title: $title, imageUrl: $imageUrl, categories: $categories, activities: $activities, programs: $programs, duration: $duration, season: $season, tripType: $tripType, isInSummer: $isInSummer, isInWinter: $isInWinter, isForFamily: $isForFamily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TripModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            const DeepCollectionEquality().equals(other.programs, programs) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.season, season) &&
            const DeepCollectionEquality().equals(other.tripType, tripType) &&
            const DeepCollectionEquality()
                .equals(other.isInSummer, isInSummer) &&
            const DeepCollectionEquality()
                .equals(other.isInWinter, isInWinter) &&
            const DeepCollectionEquality()
                .equals(other.isForFamily, isForFamily));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(activities),
      const DeepCollectionEquality().hash(programs),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(season),
      const DeepCollectionEquality().hash(tripType),
      const DeepCollectionEquality().hash(isInSummer),
      const DeepCollectionEquality().hash(isInWinter),
      const DeepCollectionEquality().hash(isForFamily));

  @JsonKey(ignore: true)
  @override
  _$TripModelCopyWith<_TripModel> get copyWith =>
      __$TripModelCopyWithImpl<_TripModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripModelToJson(this);
  }
}

abstract class _TripModel implements TripModel {
  const factory _TripModel(
      {required String id,
      required String title,
      required String imageUrl,
      required List<String> categories,
      required List<String> activities,
      required List<String> programs,
      required int duration,
      required String season,
      required String tripType,
      required bool isInSummer,
      required bool isInWinter,
      required bool isForFamily}) = _$_TripModel;

  factory _TripModel.fromJson(Map<String, dynamic> json) =
      _$_TripModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  List<String> get categories;
  @override
  List<String> get activities;
  @override
  List<String> get programs;
  @override
  int get duration;
  @override
  String get season;
  @override
  String get tripType;
  @override
  bool get isInSummer;
  @override
  bool get isInWinter;
  @override
  bool get isForFamily;
  @override
  @JsonKey(ignore: true)
  _$TripModelCopyWith<_TripModel> get copyWith =>
      throw _privateConstructorUsedError;
}
