import 'dart:convert';

import '../../../../core/exceptions/data_source_exception.dart';
import '../models/trip/trip_model.dart';
import '../providers/trips/trips_data_provider.dart';
import '../../../../core/util/either.dart';

class TripsDataSource {
  final TripsDataProvider _dataProvider;

  const TripsDataSource({required TripsDataProvider dataProvider})
      : _dataProvider = dataProvider;

  Future<List<TripModel>> getTrips() async {
    final jsonArray = await _validatedJsonArray;
    final List<TripModel> results = [];
    for (var jsonObject in jsonArray) {
      _validateObject(
          jsonObject: jsonObject,
          onValid: (model) => results.add(model),
          onInvalid: (exception) => throw Exception('invalid trip model'));
    }
    return results;
  }

  void _validateObject(
      {required dynamic jsonObject,
      required void Function(TripModel) onValid,
      required void Function(Exception) onInvalid}) {
    try {
      final model = TripModel.fromJson(jsonObject);
      onValid(model);
    } catch (exception, stackTrace) {
      onInvalid(DataSourceException(
          message:
              'Cannot parse json into a valid model, json object: $jsonObject',
          innerException: exception,
          stackTrace: stackTrace));
    }
  }

  Future<List<dynamic>> get _validatedJsonArray async {
    final content = await _validatedJsonContent;
    final contentString = content.toString();
    final String firstToken = contentString[0];
    final String lastToken = contentString[contentString.length - 1];
    if (firstToken != '[' || lastToken != ']') {
      throw DataSourceException(
          message: "Didn't receive a json array, Json content: $contentString");
    } else {
      return List.from(content);
    }
  }

  Future<dynamic> get _validatedJsonContent async {
    try {
      return json.decode(await _rawResponse);
    } catch (exception, stackTrace) {
      throw DataSourceException(
          message: "Response isn't a valid json content",
          innerException: exception,
          stackTrace: stackTrace);
    }
  }

  Future<String> get _rawResponse async {
    try {
      return await _dataProvider.tripsJson;
    } catch (exception, stackTrace) {
      throw DataSourceException(
          message: 'Cannot connect to data provider',
          innerException: exception,
          stackTrace: stackTrace);
    }
  }
}
