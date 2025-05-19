// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SouthwestStruct extends BaseStruct {
  SouthwestStruct({
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

  static SouthwestStruct fromMap(Map<String, dynamic> data) => SouthwestStruct(
        lat: castToType<double>(data['lat']),
        lng: castToType<double>(data['lng']),
      );

  static SouthwestStruct? maybeFromMap(dynamic data) => data is Map
      ? SouthwestStruct.fromMap(data.cast<String, dynamic>())
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

  static SouthwestStruct fromSerializableMap(Map<String, dynamic> data) =>
      SouthwestStruct(
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
  String toString() => 'SouthwestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SouthwestStruct && lat == other.lat && lng == other.lng;
  }

  @override
  int get hashCode => const ListEquality().hash([lat, lng]);
}

SouthwestStruct createSouthwestStruct({
  double? lat,
  double? lng,
}) =>
    SouthwestStruct(
      lat: lat,
      lng: lng,
    );
