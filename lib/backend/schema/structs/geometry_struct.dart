// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeometryStruct extends BaseStruct {
  GeometryStruct({
    LocationStruct? location,
    String? locationType,
    ViewportStruct? viewport,
  })  : _location = location,
        _locationType = locationType,
        _viewport = viewport;

  // "location" field.
  LocationStruct? _location;
  LocationStruct get location => _location ?? LocationStruct();
  set location(LocationStruct? val) => _location = val;

  void updateLocation(Function(LocationStruct) updateFn) {
    updateFn(_location ??= LocationStruct());
  }

  bool hasLocation() => _location != null;

  // "location_type" field.
  String? _locationType;
  String get locationType => _locationType ?? '';
  set locationType(String? val) => _locationType = val;

  bool hasLocationType() => _locationType != null;

  // "viewport" field.
  ViewportStruct? _viewport;
  ViewportStruct get viewport => _viewport ?? ViewportStruct();
  set viewport(ViewportStruct? val) => _viewport = val;

  void updateViewport(Function(ViewportStruct) updateFn) {
    updateFn(_viewport ??= ViewportStruct());
  }

  bool hasViewport() => _viewport != null;

  static GeometryStruct fromMap(Map<String, dynamic> data) => GeometryStruct(
        location: data['location'] is LocationStruct
            ? data['location']
            : LocationStruct.maybeFromMap(data['location']),
        locationType: data['location_type'] as String?,
        viewport: data['viewport'] is ViewportStruct
            ? data['viewport']
            : ViewportStruct.maybeFromMap(data['viewport']),
      );

  static GeometryStruct? maybeFromMap(dynamic data) =>
      data is Map ? GeometryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'location': _location?.toMap(),
        'location_type': _locationType,
        'viewport': _viewport?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'location': serializeParam(
          _location,
          ParamType.DataStruct,
        ),
        'location_type': serializeParam(
          _locationType,
          ParamType.String,
        ),
        'viewport': serializeParam(
          _viewport,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static GeometryStruct fromSerializableMap(Map<String, dynamic> data) =>
      GeometryStruct(
        location: deserializeStructParam(
          data['location'],
          ParamType.DataStruct,
          false,
          structBuilder: LocationStruct.fromSerializableMap,
        ),
        locationType: deserializeParam(
          data['location_type'],
          ParamType.String,
          false,
        ),
        viewport: deserializeStructParam(
          data['viewport'],
          ParamType.DataStruct,
          false,
          structBuilder: ViewportStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GeometryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GeometryStruct &&
        location == other.location &&
        locationType == other.locationType &&
        viewport == other.viewport;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([location, locationType, viewport]);
}

GeometryStruct createGeometryStruct({
  LocationStruct? location,
  String? locationType,
  ViewportStruct? viewport,
}) =>
    GeometryStruct(
      location: location ?? LocationStruct(),
      locationType: locationType,
      viewport: viewport ?? ViewportStruct(),
    );
