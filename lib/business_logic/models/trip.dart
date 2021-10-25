import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'trip.g.dart';

class TripType extends EnumClass {
  static const TripType exploration = _$exploration;
  static const TripType recovery = _$recovery;
  static const TripType activities = _$activities;
  static const TripType therapy = _$therapy;

  const TripType._(String name) : super(name);
  static BuiltSet<TripType> get values => _$tripTypeValues;
  static TripType valueOf(String name) => _$valueOfTripType(name);
}

class Season extends EnumClass {
  static const Season summer = _$summer;
  static const Season winter = _$winter;
  static const Season autumn = _$autumn;
  static const Season spring = _$spring;

  const Season._(String name) : super(name);
  static BuiltSet<Season> get values => _$seasonValues;
  static Season valueOf(String name) => _$valueOfSeason(name);
}

abstract class Trip implements Built<Trip, TripBuilder> {
  String get id;
  BuiltList<String> get categories;
  String get title;
  String get imageUrl;
  BuiltList<String> get activities;
  BuiltList<String> get programs;
  int get duration;
  Season get season;
  TripType get tripType;
  bool get isInSummer;
  bool get isInWinter;
  bool get isForFamily;

  const Trip._();

  factory Trip([void Function(TripBuilder) updates]) = _$Trip;
}
