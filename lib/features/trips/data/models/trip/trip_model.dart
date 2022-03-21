import 'package:freezed_annotation/freezed_annotation.dart';

part 'trip_model.freezed.dart';

part 'trip_model.g.dart';

@freezed
class TripModel with _$TripModel {
  const factory TripModel({
    required String id,
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
    required bool isForFamily,
  }) = _TripModel;

  factory TripModel.fromJson(Map<String, dynamic> json) =>
      _$TripModelFromJson(json);
}
