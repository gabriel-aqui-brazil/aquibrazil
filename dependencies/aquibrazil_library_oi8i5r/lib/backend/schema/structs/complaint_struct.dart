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
    List<ComplaintHistoryStruct>? complaintHistory,
    int? updateAt,
  })  : _createdAt = createdAt,
        _reason = reason,
        _comment = comment,
        _status = status,
        _complaintHistory = complaintHistory,
        _updateAt = updateAt;

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

  // "complaint_history" field.
  List<ComplaintHistoryStruct>? _complaintHistory;
  List<ComplaintHistoryStruct> get complaintHistory =>
      _complaintHistory ?? const [];
  set complaintHistory(List<ComplaintHistoryStruct>? val) =>
      _complaintHistory = val;

  void updateComplaintHistory(Function(List<ComplaintHistoryStruct>) updateFn) {
    updateFn(_complaintHistory ??= []);
  }

  bool hasComplaintHistory() => _complaintHistory != null;

  // "update_at" field.
  int? _updateAt;
  int get updateAt => _updateAt ?? 0;
  set updateAt(int? val) => _updateAt = val;

  void incrementUpdateAt(int amount) => updateAt = updateAt + amount;

  bool hasUpdateAt() => _updateAt != null;

  static ComplaintStruct fromMap(Map<String, dynamic> data) => ComplaintStruct(
        createdAt: castToType<int>(data['created_at']),
        reason: data['reason'] as String?,
        comment: data['comment'] as String?,
        status: data['status'] is ComplaintStatus
            ? data['status']
            : deserializeEnum<ComplaintStatus>(data['status']),
        complaintHistory: getStructList(
          data['complaint_history'],
          ComplaintHistoryStruct.fromMap,
        ),
        updateAt: castToType<int>(data['update_at']),
      );

  static ComplaintStruct? maybeFromMap(dynamic data) => data is Map
      ? ComplaintStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'created_at': _createdAt,
        'reason': _reason,
        'comment': _comment,
        'status': _status?.serialize(),
        'complaint_history': _complaintHistory?.map((e) => e.toMap()).toList(),
        'update_at': _updateAt,
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
        'complaint_history': serializeParam(
          _complaintHistory,
          ParamType.DataStruct,
          isList: true,
        ),
        'update_at': serializeParam(
          _updateAt,
          ParamType.int,
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
        complaintHistory: deserializeStructParam<ComplaintHistoryStruct>(
          data['complaint_history'],
          ParamType.DataStruct,
          true,
          structBuilder: ComplaintHistoryStruct.fromSerializableMap,
        ),
        updateAt: deserializeParam(
          data['update_at'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ComplaintStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ComplaintStruct &&
        createdAt == other.createdAt &&
        reason == other.reason &&
        comment == other.comment &&
        status == other.status &&
        listEquality.equals(complaintHistory, other.complaintHistory) &&
        updateAt == other.updateAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([createdAt, reason, comment, status, complaintHistory, updateAt]);
}

ComplaintStruct createComplaintStruct({
  int? createdAt,
  String? reason,
  String? comment,
  ComplaintStatus? status,
  int? updateAt,
}) =>
    ComplaintStruct(
      createdAt: createdAt,
      reason: reason,
      comment: comment,
      status: status,
      updateAt: updateAt,
    );
