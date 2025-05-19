// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlusCodeStruct extends BaseStruct {
  PlusCodeStruct({
    String? compoundCode,
    String? globalCode,
  })  : _compoundCode = compoundCode,
        _globalCode = globalCode;

  // "compound_code" field.
  String? _compoundCode;
  String get compoundCode => _compoundCode ?? '';
  set compoundCode(String? val) => _compoundCode = val;

  bool hasCompoundCode() => _compoundCode != null;

  // "global_code" field.
  String? _globalCode;
  String get globalCode => _globalCode ?? '';
  set globalCode(String? val) => _globalCode = val;

  bool hasGlobalCode() => _globalCode != null;

  static PlusCodeStruct fromMap(Map<String, dynamic> data) => PlusCodeStruct(
        compoundCode: data['compound_code'] as String?,
        globalCode: data['global_code'] as String?,
      );

  static PlusCodeStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlusCodeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'compound_code': _compoundCode,
        'global_code': _globalCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'compound_code': serializeParam(
          _compoundCode,
          ParamType.String,
        ),
        'global_code': serializeParam(
          _globalCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static PlusCodeStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlusCodeStruct(
        compoundCode: deserializeParam(
          data['compound_code'],
          ParamType.String,
          false,
        ),
        globalCode: deserializeParam(
          data['global_code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PlusCodeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlusCodeStruct &&
        compoundCode == other.compoundCode &&
        globalCode == other.globalCode;
  }

  @override
  int get hashCode => const ListEquality().hash([compoundCode, globalCode]);
}

PlusCodeStruct createPlusCodeStruct({
  String? compoundCode,
  String? globalCode,
}) =>
    PlusCodeStruct(
      compoundCode: compoundCode,
      globalCode: globalCode,
    );
