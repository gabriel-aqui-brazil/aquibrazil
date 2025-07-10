// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComplaintStruct extends BaseStruct {
  ComplaintStruct({
    int? createdAt,
    String? reason,
    String? comment,
    ComplaintStatus? status,
  })  : _createdAt = createdAt,
        _reason = reason,
        _comment = comment,
        _status = status;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  set reason(String? val) => _reason = val;

  bool hasReason() => _reason != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  set comment(String? val) => _comment = val;

  bool hasComment() => _comment != null;

  // "status" field.
  ComplaintStatus? _status;
  ComplaintStatus? get status => _status;
  set status(ComplaintStatus? val) => _status = val;

  bool hasStatus() => _status != null;

  static ComplaintStruct fromMap(Map<String, dynamic> data) => ComplaintStruct(
        createdAt: castToType<int>(data['created_at']),
        reason: data['reason'] as String?,
        comment: data['comment'] as String?,
        status: data['status'] is ComplaintStatus
            ? data['status']
            : deserializeEnum<ComplaintStatus>(data['status']),
      );

  static ComplaintStruct? maybeFromMap(dynamic data) => data is Map
      ? ComplaintStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'created_at': _createdAt,
        'reason': _reason,
        'comment': _comment,
        'status': _status?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'reason': serializeParam(
          _reason,
          ParamType.String,
        ),
        'comment': serializeParam(
          _comment,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static ComplaintStruct fromSerializableMap(Map<String, dynamic> data) =>
      ComplaintStruct(
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        reason: deserializeParam(
          data['reason'],
          ParamType.String,
          false,
        ),
        comment: deserializeParam(
          data['comment'],
          ParamType.String,
          false,
        ),
        status: deserializeParam<ComplaintStatus>(
          data['status'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'ComplaintStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ComplaintStruct &&
        createdAt == other.createdAt &&
        reason == other.reason &&
        comment == other.comment &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([createdAt, reason, comment, status]);
}

ComplaintStruct createComplaintStruct({
  int? createdAt,
  String? reason,
  String? comment,
  ComplaintStatus? status,
}) =>
    ComplaintStruct(
      createdAt: createdAt,
      reason: reason,
      comment: comment,
      status: status,
    );
