// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TripType _$exploration = const TripType._('exploration');
const TripType _$recovery = const TripType._('recovery');
const TripType _$activities = const TripType._('activities');
const TripType _$therapy = const TripType._('therapy');

TripType _$valueOfTripType(String name) {
  switch (name) {
    case 'exploration':
      return _$exploration;
    case 'recovery':
      return _$recovery;
    case 'activities':
      return _$activities;
    case 'therapy':
      return _$therapy;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TripType> _$tripTypeValues =
    new BuiltSet<TripType>(const <TripType>[
  _$exploration,
  _$recovery,
  _$activities,
  _$therapy,
]);

const Season _$summer = const Season._('summer');
const Season _$winter = const Season._('winter');
const Season _$autumn = const Season._('autumn');
const Season _$spring = const Season._('spring');

Season _$valueOfSeason(String name) {
  switch (name) {
    case 'summer':
      return _$summer;
    case 'winter':
      return _$winter;
    case 'autumn':
      return _$autumn;
    case 'spring':
      return _$spring;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<Season> _$seasonValues = new BuiltSet<Season>(const <Season>[
  _$summer,
  _$winter,
  _$autumn,
  _$spring,
]);

class _$Trip extends Trip {
  @override
  final String id;
  @override
  final BuiltList<String> categories;
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final BuiltList<String> activities;
  @override
  final BuiltList<String> programs;
  @override
  final int duration;
  @override
  final Season season;
  @override
  final TripType tripType;
  @override
  final bool isInSummer;
  @override
  final bool isInWinter;
  @override
  final bool isForFamily;

  factory _$Trip([void Function(TripBuilder)? updates]) =>
      (new TripBuilder()..update(updates)).build();

  _$Trip._(
      {required this.id,
      required this.categories,
      required this.title,
      required this.imageUrl,
      required this.activities,
      required this.programs,
      required this.duration,
      required this.season,
      required this.tripType,
      required this.isInSummer,
      required this.isInWinter,
      required this.isForFamily})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Trip', 'id');
    BuiltValueNullFieldError.checkNotNull(categories, 'Trip', 'categories');
    BuiltValueNullFieldError.checkNotNull(title, 'Trip', 'title');
    BuiltValueNullFieldError.checkNotNull(imageUrl, 'Trip', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(activities, 'Trip', 'activities');
    BuiltValueNullFieldError.checkNotNull(programs, 'Trip', 'programs');
    BuiltValueNullFieldError.checkNotNull(duration, 'Trip', 'duration');
    BuiltValueNullFieldError.checkNotNull(season, 'Trip', 'season');
    BuiltValueNullFieldError.checkNotNull(tripType, 'Trip', 'tripType');
    BuiltValueNullFieldError.checkNotNull(isInSummer, 'Trip', 'isInSummer');
    BuiltValueNullFieldError.checkNotNull(isInWinter, 'Trip', 'isInWinter');
    BuiltValueNullFieldError.checkNotNull(isForFamily, 'Trip', 'isForFamily');
  }

  @override
  Trip rebuild(void Function(TripBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TripBuilder toBuilder() => new TripBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Trip &&
        id == other.id &&
        categories == other.categories &&
        title == other.title &&
        imageUrl == other.imageUrl &&
        activities == other.activities &&
        programs == other.programs &&
        duration == other.duration &&
        season == other.season &&
        tripType == other.tripType &&
        isInSummer == other.isInSummer &&
        isInWinter == other.isInWinter &&
        isForFamily == other.isForFamily;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                categories.hashCode),
                                            title.hashCode),
                                        imageUrl.hashCode),
                                    activities.hashCode),
                                programs.hashCode),
                            duration.hashCode),
                        season.hashCode),
                    tripType.hashCode),
                isInSummer.hashCode),
            isInWinter.hashCode),
        isForFamily.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Trip')
          ..add('id', id)
          ..add('categories', categories)
          ..add('title', title)
          ..add('imageUrl', imageUrl)
          ..add('activities', activities)
          ..add('programs', programs)
          ..add('duration', duration)
          ..add('season', season)
          ..add('tripType', tripType)
          ..add('isInSummer', isInSummer)
          ..add('isInWinter', isInWinter)
          ..add('isForFamily', isForFamily))
        .toString();
  }
}

class TripBuilder implements Builder<Trip, TripBuilder> {
  _$Trip? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<String>? _categories;
  ListBuilder<String> get categories =>
      _$this._categories ??= new ListBuilder<String>();
  set categories(ListBuilder<String>? categories) =>
      _$this._categories = categories;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  ListBuilder<String>? _activities;
  ListBuilder<String> get activities =>
      _$this._activities ??= new ListBuilder<String>();
  set activities(ListBuilder<String>? activities) =>
      _$this._activities = activities;

  ListBuilder<String>? _programs;
  ListBuilder<String> get programs =>
      _$this._programs ??= new ListBuilder<String>();
  set programs(ListBuilder<String>? programs) => _$this._programs = programs;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  Season? _season;
  Season? get season => _$this._season;
  set season(Season? season) => _$this._season = season;

  TripType? _tripType;
  TripType? get tripType => _$this._tripType;
  set tripType(TripType? tripType) => _$this._tripType = tripType;

  bool? _isInSummer;
  bool? get isInSummer => _$this._isInSummer;
  set isInSummer(bool? isInSummer) => _$this._isInSummer = isInSummer;

  bool? _isInWinter;
  bool? get isInWinter => _$this._isInWinter;
  set isInWinter(bool? isInWinter) => _$this._isInWinter = isInWinter;

  bool? _isForFamily;
  bool? get isForFamily => _$this._isForFamily;
  set isForFamily(bool? isForFamily) => _$this._isForFamily = isForFamily;

  TripBuilder();

  TripBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _categories = $v.categories.toBuilder();
      _title = $v.title;
      _imageUrl = $v.imageUrl;
      _activities = $v.activities.toBuilder();
      _programs = $v.programs.toBuilder();
      _duration = $v.duration;
      _season = $v.season;
      _tripType = $v.tripType;
      _isInSummer = $v.isInSummer;
      _isInWinter = $v.isInWinter;
      _isForFamily = $v.isForFamily;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Trip other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Trip;
  }

  @override
  void update(void Function(TripBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Trip build() {
    _$Trip _$result;
    try {
      _$result = _$v ??
          new _$Trip._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Trip', 'id'),
              categories: categories.build(),
              title:
                  BuiltValueNullFieldError.checkNotNull(title, 'Trip', 'title'),
              imageUrl: BuiltValueNullFieldError.checkNotNull(
                  imageUrl, 'Trip', 'imageUrl'),
              activities: activities.build(),
              programs: programs.build(),
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, 'Trip', 'duration'),
              season: BuiltValueNullFieldError.checkNotNull(
                  season, 'Trip', 'season'),
              tripType: BuiltValueNullFieldError.checkNotNull(
                  tripType, 'Trip', 'tripType'),
              isInSummer: BuiltValueNullFieldError.checkNotNull(
                  isInSummer, 'Trip', 'isInSummer'),
              isInWinter: BuiltValueNullFieldError.checkNotNull(
                  isInWinter, 'Trip', 'isInWinter'),
              isForFamily: BuiltValueNullFieldError.checkNotNull(
                  isForFamily, 'Trip', 'isForFamily'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();

        _$failedField = 'activities';
        activities.build();
        _$failedField = 'programs';
        programs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Trip', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
