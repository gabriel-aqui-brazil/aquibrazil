// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembershipStruct extends BaseStruct {
  MembershipStruct({
    String? id,
    int? startAt,
    int? expireAt,
    double? paidAmount,
    String? status,
    String? type,
    int? cancelAt,
    bool? isCancel,
  })  : _id = id,
        _startAt = startAt,
        _expireAt = expireAt,
        _paidAmount = paidAmount,
        _status = status,
        _type = type,
        _cancelAt = cancelAt,
        _isCancel = isCancel;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "start_at" field.
  int? _startAt;
  int get startAt => _startAt ?? 0;
  set startAt(int? val) => _startAt = val;

  void incrementStartAt(int amount) => startAt = startAt + amount;

  bool hasStartAt() => _startAt != null;

  // "expire_at" field.
  int? _expireAt;
  int get expireAt => _expireAt ?? 0;
  set expireAt(int? val) => _expireAt = val;

  void incrementExpireAt(int amount) => expireAt = expireAt + amount;

  bool hasExpireAt() => _expireAt != null;

  // "paid_amount" field.
  double? _paidAmount;
  double get paidAmount => _paidAmount ?? 0.0;
  set paidAmount(double? val) => _paidAmount = val;

  void incrementPaidAmount(double amount) => paidAmount = paidAmount + amount;

  bool hasPaidAmount() => _paidAmount != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "cancel_at" field.
  int? _cancelAt;
  int get cancelAt => _cancelAt ?? 0;
  set cancelAt(int? val) => _cancelAt = val;

  void incrementCancelAt(int amount) => cancelAt = cancelAt + amount;

  bool hasCancelAt() => _cancelAt != null;

  // "is_cancel" field.
  bool? _isCancel;
  bool get isCancel => _isCancel ?? false;
  set isCancel(bool? val) => _isCancel = val;

  bool hasIsCancel() => _isCancel != null;

  static MembershipStruct fromMap(Map<String, dynamic> data) =>
      MembershipStruct(
        id: data['id'] as String?,
        startAt: castToType<int>(data['start_at']),
        expireAt: castToType<int>(data['expire_at']),
        paidAmount: castToType<double>(data['paid_amount']),
        status: data['status'] as String?,
        type: data['type'] as String?,
        cancelAt: castToType<int>(data['cancel_at']),
        isCancel: data['is_cancel'] as bool?,
      );

  static MembershipStruct? maybeFromMap(dynamic data) => data is Map
      ? MembershipStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'start_at': _startAt,
        'expire_at': _expireAt,
        'paid_amount': _paidAmount,
        'status': _status,
        'type': _type,
        'cancel_at': _cancelAt,
        'is_cancel': _isCancel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'start_at': serializeParam(
          _startAt,
          ParamType.int,
        ),
        'expire_at': serializeParam(
          _expireAt,
          ParamType.int,
        ),
        'paid_amount': serializeParam(
          _paidAmount,
          ParamType.double,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'cancel_at': serializeParam(
          _cancelAt,
          ParamType.int,
        ),
        'is_cancel': serializeParam(
          _isCancel,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MembershipStruct fromSerializableMap(Map<String, dynamic> data) =>
      MembershipStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        startAt: deserializeParam(
          data['start_at'],
          ParamType.int,
          false,
        ),
        expireAt: deserializeParam(
          data['expire_at'],
          ParamType.int,
          false,
        ),
        paidAmount: deserializeParam(
          data['paid_amount'],
          ParamType.double,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        cancelAt: deserializeParam(
          data['cancel_at'],
          ParamType.int,
          false,
        ),
        isCancel: deserializeParam(
          data['is_cancel'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MembershipStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MembershipStruct &&
        id == other.id &&
        startAt == other.startAt &&
        expireAt == other.expireAt &&
        paidAmount == other.paidAmount &&
        status == other.status &&
        type == other.type &&
        cancelAt == other.cancelAt &&
        isCancel == other.isCancel;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, startAt, expireAt, paidAmount, status, type, cancelAt, isCancel]);
}

MembershipStruct createMembershipStruct({
  String? id,
  int? startAt,
  int? expireAt,
  double? paidAmount,
  String? status,
  String? type,
  int? cancelAt,
  bool? isCancel,
}) =>
    MembershipStruct(
      id: id,
      startAt: startAt,
      expireAt: expireAt,
      paidAmount: paidAmount,
      status: status,
      type: type,
      cancelAt: cancelAt,
      isCancel: isCancel,
    );
