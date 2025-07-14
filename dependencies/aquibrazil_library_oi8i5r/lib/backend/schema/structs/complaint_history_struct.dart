// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComplaintHistoryStruct extends BaseStruct {
  ComplaintHistoryStruct({
    int? createdAt,
    ComplaintHistoryStatus? status,
    String? observation,
  })  : _createdAt = createdAt,
        _status = status,
        _observation = observation;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  ComplaintHistoryStatus? _status;
  ComplaintHistoryStatus? get status => _status;
  set status(ComplaintHistoryStatus? val) => _status = val;

  bool hasStatus() => _status != null;

  // "observation" field.
  String? _observation;
  String get observation => _observation ?? '';
  set observation(String? val) => _observation = val;

  bool hasObservation() => _observation != null;

  static ComplaintHistoryStruct fromMap(Map<String, dynamic> data) =>
      ComplaintHistoryStruct(
        createdAt: castToType<int>(data['created_at']),
        status: data['status'] is ComplaintHistoryStatus
            ? data['status']
            : deserializeEnum<ComplaintHistoryStatus>(data['status']),
        observation: data['observation'] as String?,
      );

  static ComplaintHistoryStruct? maybeFromMap(dynamic data) => data is Map
      ? ComplaintHistoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'created_at': _createdAt,
        'status': _status?.serialize(),
        'observation': _observation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.Enum,
        ),
        'observation': serializeParam(
          _observation,
          ParamType.String,
        ),
      }.withoutNulls;

  static ComplaintHistoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ComplaintHistoryStruct(
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        status: deserializeParam<ComplaintHistoryStatus>(
          data['status'],
          ParamType.Enum,
          false,
        ),
        observation: deserializeParam(
          data['observation'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ComplaintHistoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ComplaintHistoryStruct &&
        createdAt == other.createdAt &&
        status == other.status &&
        observation == other.observation;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([createdAt, status, observation]);
}

ComplaintHistoryStruct createComplaintHistoryStruct({
  int? createdAt,
  ComplaintHistoryStatus? status,
  String? observation,
}) =>
    ComplaintHistoryStruct(
      createdAt: createdAt,
      status: status,
      observation: observation,
    );
