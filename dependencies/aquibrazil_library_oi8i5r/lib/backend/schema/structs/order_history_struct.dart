// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderHistoryStruct extends BaseStruct {
  OrderHistoryStruct({
    int? createdAt,
    String? status,
  })  : _createdAt = createdAt,
        _status = status;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static OrderHistoryStruct fromMap(Map<String, dynamic> data) =>
      OrderHistoryStruct(
        createdAt: castToType<int>(data['created_at']),
        status: data['status'] as String?,
      );

  static OrderHistoryStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderHistoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'created_at': _createdAt,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrderHistoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderHistoryStruct(
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrderHistoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderHistoryStruct &&
        createdAt == other.createdAt &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([createdAt, status]);
}

OrderHistoryStruct createOrderHistoryStruct({
  int? createdAt,
  String? status,
}) =>
    OrderHistoryStruct(
      createdAt: createdAt,
      status: status,
    );
