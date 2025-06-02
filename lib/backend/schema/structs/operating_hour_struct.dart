// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OperatingHourStruct extends BaseStruct {
  OperatingHourStruct({
    int? day,
    int? openingHour,
    int? closingHour,
  })  : _day = day,
        _openingHour = openingHour,
        _closingHour = closingHour;

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

  static OperatingHourStruct fromMap(Map<String, dynamic> data) =>
      OperatingHourStruct(
        day: castToType<int>(data['day']),
        openingHour: castToType<int>(data['opening_hour']),
        closingHour: castToType<int>(data['closing_hour']),
      );

  static OperatingHourStruct? maybeFromMap(dynamic data) => data is Map
      ? OperatingHourStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'day': _day,
        'opening_hour': _openingHour,
        'closing_hour': _closingHour,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
      }.withoutNulls;

  static OperatingHourStruct fromSerializableMap(Map<String, dynamic> data) =>
      OperatingHourStruct(
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
      );

  @override
  String toString() => 'OperatingHourStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OperatingHourStruct &&
        day == other.day &&
        openingHour == other.openingHour &&
        closingHour == other.closingHour;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([day, openingHour, closingHour]);
}

OperatingHourStruct createOperatingHourStruct({
  int? day,
  int? openingHour,
  int? closingHour,
}) =>
    OperatingHourStruct(
      day: day,
      openingHour: openingHour,
      closingHour: closingHour,
    );
