import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_entity.freezed.dart';

@freezed
class TripEntity with _$TripEntity {
  const factory TripEntity({
    required String id,
    required String title,
    required String imageUrl,
    required List<String> activities,
    required List<String> programs,
    required int duration,
    required Season season,
    required TripType tripType,
    required bool isInSummer,
    required bool isInWinter,
    required bool isForFamily,
  }) = _TripEntity;
}

enum TripType {
  exploration,
  recovery,
  activities,
  therapy,
}

enum Season {
  summer,
  winter,
  autumn,
  spring,
}

extension SeasonFromString on Season {
  static Season fromString({required String name}) {
    switch (name) {
      case 'summer':
        return Season.summer;
      case 'winter':
        return Season.winter;
      case 'autumn':
        return Season.autumn;
      case 'spring':
        return Season.spring;
      default:
        throw UnimplementedError('Unknown season $name');
    }
  }
}
