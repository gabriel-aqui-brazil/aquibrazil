// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressComponentsStruct extends BaseStruct {
  AddressComponentsStruct({
    String? longName,
    String? shortName,
    List<String>? types,
  })  : _longName = longName,
        _shortName = shortName,
        _types = types;

  // "long_name" field.
  String? _longName;
  String get longName => _longName ?? '';
  set longName(String? val) => _longName = val;

  bool hasLongName() => _longName != null;

  // "short_name" field.
  String? _shortName;
  String get shortName => _shortName ?? '';
  set shortName(String? val) => _shortName = val;

  bool hasShortName() => _shortName != null;

  // "types" field.
  List<String>? _types;
  List<String> get types => _types ?? const [];
  set types(List<String>? val) => _types = val;

  void updateTypes(Function(List<String>) updateFn) {
    updateFn(_types ??= []);
  }

  bool hasTypes() => _types != null;

  static AddressComponentsStruct fromMap(Map<String, dynamic> data) =>
      AddressComponentsStruct(
        longName: data['long_name'] as String?,
        shortName: data['short_name'] as String?,
        types: getDataList(data['types']),
      );

  static AddressComponentsStruct? maybeFromMap(dynamic data) => data is Map
      ? AddressComponentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'long_name': _longName,
        'short_name': _shortName,
        'types': _types,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'long_name': serializeParam(
          _longName,
          ParamType.String,
        ),
        'short_name': serializeParam(
          _shortName,
          ParamType.String,
        ),
        'types': serializeParam(
          _types,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static AddressComponentsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AddressComponentsStruct(
        longName: deserializeParam(
          data['long_name'],
          ParamType.String,
          false,
        ),
        shortName: deserializeParam(
          data['short_name'],
          ParamType.String,
          false,
        ),
        types: deserializeParam<String>(
          data['types'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'AddressComponentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AddressComponentsStruct &&
        longName == other.longName &&
        shortName == other.shortName &&
        listEquality.equals(types, other.types);
  }

  @override
  int get hashCode => const ListEquality().hash([longName, shortName, types]);
}

AddressComponentsStruct createAddressComponentsStruct({
  String? longName,
  String? shortName,
}) =>
    AddressComponentsStruct(
      longName: longName,
      shortName: shortName,
    );
