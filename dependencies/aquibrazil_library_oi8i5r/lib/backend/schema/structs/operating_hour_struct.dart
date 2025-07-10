// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OperatingHourStruct extends BaseStruct {
  OperatingHourStruct({
    String? id,
    int? day,
    int? openingHour,
    int? closingHour,
    String? openingTime,
    String? closingTime,
  })  : _id = id,
        _day = day,
        _openingHour = openingHour,
        _closingHour = closingHour,
        _openingTime = openingTime,
        _closingTime = closingTime;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "day" field.
  int? _day;
  int get day => _day ?? 0;
  set day(int? val) => _day = val;

  void incrementDay(int amount) => day = day + amount;

  bool hasDay() => _day != null;

  // "opening_hour" field.
  int? _openingHour;
  int get openingHour => _openingHour ?? 0;
  set openingHour(int? val) => _openingHour = val;

  void incrementOpeningHour(int amount) => openingHour = openingHour + amount;

  bool hasOpeningHour() => _openingHour != null;

  // "closing_hour" field.
  int? _closingHour;
  int get closingHour => _closingHour ?? 0;
  set closingHour(int? val) => _closingHour = val;

  void incrementClosingHour(int amount) => closingHour = closingHour + amount;

  bool hasClosingHour() => _closingHour != null;

  // "opening_time" field.
  String? _openingTime;
  String get openingTime => _openingTime ?? '';
  set openingTime(String? val) => _openingTime = val;

  bool hasOpeningTime() => _openingTime != null;

  // "closing_time" field.
  String? _closingTime;
  String get closingTime => _closingTime ?? '';
  set closingTime(String? val) => _closingTime = val;

  bool hasClosingTime() => _closingTime != null;

  static OperatingHourStruct fromMap(Map<String, dynamic> data) =>
      OperatingHourStruct(
        id: data['id'] as String?,
        day: castToType<int>(data['day']),
        openingHour: castToType<int>(data['opening_hour']),
        closingHour: castToType<int>(data['closing_hour']),
        openingTime: data['opening_time'] as String?,
        closingTime: data['closing_time'] as String?,
      );

  static OperatingHourStruct? maybeFromMap(dynamic data) => data is Map
      ? OperatingHourStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'day': _day,
        'opening_hour': _openingHour,
        'closing_hour': _closingHour,
        'opening_time': _openingTime,
        'closing_time': _closingTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'day': serializeParam(
          _day,
          ParamType.int,
        ),
        'opening_hour': serializeParam(
          _openingHour,
          ParamType.int,
        ),
        'closing_hour': serializeParam(
          _closingHour,
          ParamType.int,
        ),
        'opening_time': serializeParam(
          _openingTime,
          ParamType.String,
        ),
        'closing_time': serializeParam(
          _closingTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static OperatingHourStruct fromSerializableMap(Map<String, dynamic> data) =>
      OperatingHourStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        day: deserializeParam(
          data['day'],
          ParamType.int,
          false,
        ),
        openingHour: deserializeParam(
          data['opening_hour'],
          ParamType.int,
          false,
        ),
        closingHour: deserializeParam(
          data['closing_hour'],
          ParamType.int,
          false,
        ),
        openingTime: deserializeParam(
          data['opening_time'],
          ParamType.String,
          false,
        ),
        closingTime: deserializeParam(
          data['closing_time'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OperatingHourStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OperatingHourStruct &&
        id == other.id &&
        day == other.day &&
        openingHour == other.openingHour &&
        closingHour == other.closingHour &&
        openingTime == other.openingTime &&
        closingTime == other.closingTime;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, day, openingHour, closingHour, openingTime, closingTime]);
}

OperatingHourStruct createOperatingHourStruct({
  String? id,
  int? day,
  int? openingHour,
  int? closingHour,
  String? openingTime,
  String? closingTime,
}) =>
    OperatingHourStruct(
      id: id,
      day: day,
      openingHour: openingHour,
      closingHour: closingHour,
      openingTime: openingTime,
      closingTime: closingTime,
    );
