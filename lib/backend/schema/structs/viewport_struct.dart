// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ViewportStruct extends BaseStruct {
  ViewportStruct({
    NortheastStruct? northeast,
    SouthwestStruct? southwest,
  })  : _northeast = northeast,
        _southwest = southwest;

  // "northeast" field.
  NortheastStruct? _northeast;
  NortheastStruct get northeast => _northeast ?? NortheastStruct();
  set northeast(NortheastStruct? val) => _northeast = val;

  void updateNortheast(Function(NortheastStruct) updateFn) {
    updateFn(_northeast ??= NortheastStruct());
  }

  bool hasNortheast() => _northeast != null;

  // "southwest" field.
  SouthwestStruct? _southwest;
  SouthwestStruct get southwest => _southwest ?? SouthwestStruct();
  set southwest(SouthwestStruct? val) => _southwest = val;

  void updateSouthwest(Function(SouthwestStruct) updateFn) {
    updateFn(_southwest ??= SouthwestStruct());
  }

  bool hasSouthwest() => _southwest != null;

  static ViewportStruct fromMap(Map<String, dynamic> data) => ViewportStruct(
        northeast: data['northeast'] is NortheastStruct
            ? data['northeast']
            : NortheastStruct.maybeFromMap(data['northeast']),
        southwest: data['southwest'] is SouthwestStruct
            ? data['southwest']
            : SouthwestStruct.maybeFromMap(data['southwest']),
      );

  static ViewportStruct? maybeFromMap(dynamic data) =>
      data is Map ? ViewportStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'northeast': _northeast?.toMap(),
        'southwest': _southwest?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'northeast': serializeParam(
          _northeast,
          ParamType.DataStruct,
        ),
        'southwest': serializeParam(
          _southwest,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ViewportStruct fromSerializableMap(Map<String, dynamic> data) =>
      ViewportStruct(
        northeast: deserializeStructParam(
          data['northeast'],
          ParamType.DataStruct,
          false,
          structBuilder: NortheastStruct.fromSerializableMap,
        ),
        southwest: deserializeStructParam(
          data['southwest'],
          ParamType.DataStruct,
          false,
          structBuilder: SouthwestStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ViewportStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ViewportStruct &&
        northeast == other.northeast &&
        southwest == other.southwest;
  }

  @override
  int get hashCode => const ListEquality().hash([northeast, southwest]);
}

ViewportStruct createViewportStruct({
  NortheastStruct? northeast,
  SouthwestStruct? southwest,
}) =>
    ViewportStruct(
      northeast: northeast ?? NortheastStruct(),
      southwest: southwest ?? SouthwestStruct(),
    );
