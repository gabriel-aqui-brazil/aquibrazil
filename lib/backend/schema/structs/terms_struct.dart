// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TermsStruct extends BaseStruct {
  TermsStruct({
    int? offset,
    String? value,
  })  : _offset = offset,
        _value = value;

  // "offset" field.
  int? _offset;
  int get offset => _offset ?? 0;
  set offset(int? val) => _offset = val;

  void incrementOffset(int amount) => offset = offset + amount;

  bool hasOffset() => _offset != null;

  // "value" field.
  String? _value;
  String get value => _value ?? '';
  set value(String? val) => _value = val;

  bool hasValue() => _value != null;

  static TermsStruct fromMap(Map<String, dynamic> data) => TermsStruct(
        offset: castToType<int>(data['offset']),
        value: data['value'] as String?,
      );

  static TermsStruct? maybeFromMap(dynamic data) =>
      data is Map ? TermsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'offset': _offset,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'offset': serializeParam(
          _offset,
          ParamType.int,
        ),
        'value': serializeParam(
          _value,
          ParamType.String,
        ),
      }.withoutNulls;

  static TermsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TermsStruct(
        offset: deserializeParam(
          data['offset'],
          ParamType.int,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TermsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TermsStruct &&
        offset == other.offset &&
        value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([offset, value]);
}

TermsStruct createTermsStruct({
  int? offset,
  String? value,
}) =>
    TermsStruct(
      offset: offset,
      value: value,
    );
