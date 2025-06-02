// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProviderWorkScheduleStruct extends BaseStruct {
  ProviderWorkScheduleStruct({
    int? startTime,
  }) : _startTime = startTime;

  // "start_time" field.
  int? _startTime;
  int get startTime => _startTime ?? 0;
  set startTime(int? val) => _startTime = val;

  void incrementStartTime(int amount) => startTime = startTime + amount;

  bool hasStartTime() => _startTime != null;

  static ProviderWorkScheduleStruct fromMap(Map<String, dynamic> data) =>
      ProviderWorkScheduleStruct(
        startTime: castToType<int>(data['start_time']),
      );

  static ProviderWorkScheduleStruct? maybeFromMap(dynamic data) => data is Map
      ? ProviderWorkScheduleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'start_time': _startTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'start_time': serializeParam(
          _startTime,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProviderWorkScheduleStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProviderWorkScheduleStruct(
        startTime: deserializeParam(
          data['start_time'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProviderWorkScheduleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProviderWorkScheduleStruct && startTime == other.startTime;
  }

  @override
  int get hashCode => const ListEquality().hash([startTime]);
}

ProviderWorkScheduleStruct createProviderWorkScheduleStruct({
  int? startTime,
}) =>
    ProviderWorkScheduleStruct(
      startTime: startTime,
    );
