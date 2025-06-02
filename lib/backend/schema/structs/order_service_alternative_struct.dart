// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderServiceAlternativeStruct extends BaseStruct {
  OrderServiceAlternativeStruct({
    int? firstDate,
    int? secondDate,
    int? rescheduledAt,
  })  : _firstDate = firstDate,
        _secondDate = secondDate,
        _rescheduledAt = rescheduledAt;

  // "first_date" field.
  int? _firstDate;
  int get firstDate => _firstDate ?? 0;
  set firstDate(int? val) => _firstDate = val;

  void incrementFirstDate(int amount) => firstDate = firstDate + amount;

  bool hasFirstDate() => _firstDate != null;

  // "second_date" field.
  int? _secondDate;
  int get secondDate => _secondDate ?? 0;
  set secondDate(int? val) => _secondDate = val;

  void incrementSecondDate(int amount) => secondDate = secondDate + amount;

  bool hasSecondDate() => _secondDate != null;

  // "rescheduled_at" field.
  int? _rescheduledAt;
  int get rescheduledAt => _rescheduledAt ?? 0;
  set rescheduledAt(int? val) => _rescheduledAt = val;

  void incrementRescheduledAt(int amount) =>
      rescheduledAt = rescheduledAt + amount;

  bool hasRescheduledAt() => _rescheduledAt != null;

  static OrderServiceAlternativeStruct fromMap(Map<String, dynamic> data) =>
      OrderServiceAlternativeStruct(
        firstDate: castToType<int>(data['first_date']),
        secondDate: castToType<int>(data['second_date']),
        rescheduledAt: castToType<int>(data['rescheduled_at']),
      );

  static OrderServiceAlternativeStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? OrderServiceAlternativeStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'first_date': _firstDate,
        'second_date': _secondDate,
        'rescheduled_at': _rescheduledAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'first_date': serializeParam(
          _firstDate,
          ParamType.int,
        ),
        'second_date': serializeParam(
          _secondDate,
          ParamType.int,
        ),
        'rescheduled_at': serializeParam(
          _rescheduledAt,
          ParamType.int,
        ),
      }.withoutNulls;

  static OrderServiceAlternativeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OrderServiceAlternativeStruct(
        firstDate: deserializeParam(
          data['first_date'],
          ParamType.int,
          false,
        ),
        secondDate: deserializeParam(
          data['second_date'],
          ParamType.int,
          false,
        ),
        rescheduledAt: deserializeParam(
          data['rescheduled_at'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'OrderServiceAlternativeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderServiceAlternativeStruct &&
        firstDate == other.firstDate &&
        secondDate == other.secondDate &&
        rescheduledAt == other.rescheduledAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([firstDate, secondDate, rescheduledAt]);
}

OrderServiceAlternativeStruct createOrderServiceAlternativeStruct({
  int? firstDate,
  int? secondDate,
  int? rescheduledAt,
}) =>
    OrderServiceAlternativeStruct(
      firstDate: firstDate,
      secondDate: secondDate,
      rescheduledAt: rescheduledAt,
    );
