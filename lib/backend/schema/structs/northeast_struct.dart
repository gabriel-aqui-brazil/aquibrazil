// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NortheastStruct extends BaseStruct {
  NortheastStruct({
    double? lat,
    double? lng,
  })  : _lat = lat,
        _lng = lng;

  // "lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  set lat(double? val) => _lat = val;

  void incrementLat(double amount) => lat = lat + amount;

  bool hasLat() => _lat != null;

  // "lng" field.
  double? _lng;
  double get lng => _lng ?? 0.0;
  set lng(double? val) => _lng = val;

  void incrementLng(double amount) => lng = lng + amount;

  bool hasLng() => _lng != null;

  static NortheastStruct fromMap(Map<String, dynamic> data) => NortheastStruct(
        lat: castToType<double>(data['lat']),
        lng: castToType<double>(data['lng']),
      );

  static NortheastStruct? maybeFromMap(dynamic data) => data is Map
      ? NortheastStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'lat': _lat,
        'lng': _lng,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'lat': serializeParam(
          _lat,
          ParamType.double,
        ),
        'lng': serializeParam(
          _lng,
          ParamType.double,
        ),
      }.withoutNulls;

  static NortheastStruct fromSerializableMap(Map<String, dynamic> data) =>
      NortheastStruct(
        lat: deserializeParam(
          data['lat'],
          ParamType.double,
          false,
        ),
        lng: deserializeParam(
          data['lng'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'NortheastStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NortheastStruct && lat == other.lat && lng == other.lng;
  }

  @override
  int get hashCode => const ListEquality().hash([lat, lng]);
}

NortheastStruct createNortheastStruct({
  double? lat,
  double? lng,
}) =>
    NortheastStruct(
      lat: lat,
      lng: lng,
    );
