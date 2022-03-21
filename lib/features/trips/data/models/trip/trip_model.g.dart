// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripModel _$$_TripModelFromJson(Map<String, dynamic> json) => _$_TripModel(
      id: json['id'] as String,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      activities: (json['activities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      programs:
          (json['programs'] as List<dynamic>).map((e) => e as String).toList(),
      duration: json['duration'] as int,
      season: json['season'] as String,
      tripType: json['tripType'] as String,
      isInSummer: json['isInSummer'] as bool,
      isInWinter: json['isInWinter'] as bool,
      isForFamily: json['isForFamily'] as bool,
    );

Map<String, dynamic> _$$_TripModelToJson(_$_TripModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'categories': instance.categories,
      'activities': instance.activities,
      'programs': instance.programs,
      'duration': instance.duration,
      'season': instance.season,
      'tripType': instance.tripType,
      'isInSummer': instance.isInSummer,
      'isInWinter': instance.isInWinter,
      'isForFamily': instance.isForFamily,
    };
