// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MainTextMatchedSubstringsStruct extends BaseStruct {
  MainTextMatchedSubstringsStruct({
    int? length,
    int? offset,
  })  : _length = length,
        _offset = offset;

  // "length" field.
  int? _length;
  int get length => _length ?? 0;
  set length(int? val) => _length = val;

  void incrementLength(int amount) => length = length + amount;

  bool hasLength() => _length != null;

  // "offset" field.
  int? _offset;
  int get offset => _offset ?? 0;
  set offset(int? val) => _offset = val;

  void incrementOffset(int amount) => offset = offset + amount;

  bool hasOffset() => _offset != null;

  static MainTextMatchedSubstringsStruct fromMap(Map<String, dynamic> data) =>
      MainTextMatchedSubstringsStruct(
        length: castToType<int>(data['length']),
        offset: castToType<int>(data['offset']),
      );

  static MainTextMatchedSubstringsStruct? maybeFromMap(dynamic data) => data
          is Map
      ? MainTextMatchedSubstringsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'length': _length,
        'offset': _offset,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'length': serializeParam(
          _length,
          ParamType.int,
        ),
        'offset': serializeParam(
          _offset,
          ParamType.int,
        ),
      }.withoutNulls;

  static MainTextMatchedSubstringsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MainTextMatchedSubstringsStruct(
        length: deserializeParam(
          data['length'],
          ParamType.int,
          false,
        ),
        offset: deserializeParam(
          data['offset'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MainTextMatchedSubstringsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MainTextMatchedSubstringsStruct &&
        length == other.length &&
        offset == other.offset;
  }

  @override
  int get hashCode => const ListEquality().hash([length, offset]);
}

MainTextMatchedSubstringsStruct createMainTextMatchedSubstringsStruct({
  int? length,
  int? offset,
}) =>
    MainTextMatchedSubstringsStruct(
      length: length,
      offset: offset,
    );
