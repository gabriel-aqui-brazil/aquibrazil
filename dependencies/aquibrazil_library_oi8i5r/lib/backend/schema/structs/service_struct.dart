// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceStruct extends BaseStruct {
  ServiceStruct({
    String? moreInfo,
    int? cancelUntil,
    int? duration,
  })  : _moreInfo = moreInfo,
        _cancelUntil = cancelUntil,
        _duration = duration;

  // "more_info" field.
  String? _moreInfo;
  String get moreInfo => _moreInfo ?? '';
  set moreInfo(String? val) => _moreInfo = val;

  bool hasMoreInfo() => _moreInfo != null;

  // "cancel_until" field.
  int? _cancelUntil;
  int get cancelUntil => _cancelUntil ?? 0;
  set cancelUntil(int? val) => _cancelUntil = val;

  void incrementCancelUntil(int amount) => cancelUntil = cancelUntil + amount;

  bool hasCancelUntil() => _cancelUntil != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  set duration(int? val) => _duration = val;

  void incrementDuration(int amount) => duration = duration + amount;

  bool hasDuration() => _duration != null;

  static ServiceStruct fromMap(Map<String, dynamic> data) => ServiceStruct(
        moreInfo: data['more_info'] as String?,
        cancelUntil: castToType<int>(data['cancel_until']),
        duration: castToType<int>(data['duration']),
      );

  static ServiceStruct? maybeFromMap(dynamic data) =>
      data is Map ? ServiceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'more_info': _moreInfo,
        'cancel_until': _cancelUntil,
        'duration': _duration,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'more_info': serializeParam(
          _moreInfo,
          ParamType.String,
        ),
        'cancel_until': serializeParam(
          _cancelUntil,
          ParamType.int,
        ),
        'duration': serializeParam(
          _duration,
          ParamType.int,
        ),
      }.withoutNulls;

  static ServiceStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServiceStruct(
        moreInfo: deserializeParam(
          data['more_info'],
          ParamType.String,
          false,
        ),
        cancelUntil: deserializeParam(
          data['cancel_until'],
          ParamType.int,
          false,
        ),
        duration: deserializeParam(
          data['duration'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ServiceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServiceStruct &&
        moreInfo == other.moreInfo &&
        cancelUntil == other.cancelUntil &&
        duration == other.duration;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([moreInfo, cancelUntil, duration]);
}

ServiceStruct createServiceStruct({
  String? moreInfo,
  int? cancelUntil,
  int? duration,
}) =>
    ServiceStruct(
      moreInfo: moreInfo,
      cancelUntil: cancelUntil,
      duration: duration,
    );
