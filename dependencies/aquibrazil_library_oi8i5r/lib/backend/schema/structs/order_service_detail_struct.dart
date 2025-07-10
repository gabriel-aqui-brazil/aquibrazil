// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderServiceDetailStruct extends BaseStruct {
  OrderServiceDetailStruct({
    int? preferredTime,
    int? cancelUntil,
    UserStruct? provider,
  })  : _preferredTime = preferredTime,
        _cancelUntil = cancelUntil,
        _provider = provider;

  // "preferred_time" field.
  int? _preferredTime;
  int get preferredTime => _preferredTime ?? 0;
  set preferredTime(int? val) => _preferredTime = val;

  void incrementPreferredTime(int amount) =>
      preferredTime = preferredTime + amount;

  bool hasPreferredTime() => _preferredTime != null;

  // "cancel_until" field.
  int? _cancelUntil;
  int get cancelUntil => _cancelUntil ?? 0;
  set cancelUntil(int? val) => _cancelUntil = val;

  void incrementCancelUntil(int amount) => cancelUntil = cancelUntil + amount;

  bool hasCancelUntil() => _cancelUntil != null;

  // "provider" field.
  UserStruct? _provider;
  UserStruct get provider => _provider ?? UserStruct();
  set provider(UserStruct? val) => _provider = val;

  void updateProvider(Function(UserStruct) updateFn) {
    updateFn(_provider ??= UserStruct());
  }

  bool hasProvider() => _provider != null;

  static OrderServiceDetailStruct fromMap(Map<String, dynamic> data) =>
      OrderServiceDetailStruct(
        preferredTime: castToType<int>(data['preferred_time']),
        cancelUntil: castToType<int>(data['cancel_until']),
        provider: data['provider'] is UserStruct
            ? data['provider']
            : UserStruct.maybeFromMap(data['provider']),
      );

  static OrderServiceDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderServiceDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'preferred_time': _preferredTime,
        'cancel_until': _cancelUntil,
        'provider': _provider?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'preferred_time': serializeParam(
          _preferredTime,
          ParamType.int,
        ),
        'cancel_until': serializeParam(
          _cancelUntil,
          ParamType.int,
        ),
        'provider': serializeParam(
          _provider,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static OrderServiceDetailStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OrderServiceDetailStruct(
        preferredTime: deserializeParam(
          data['preferred_time'],
          ParamType.int,
          false,
        ),
        cancelUntil: deserializeParam(
          data['cancel_until'],
          ParamType.int,
          false,
        ),
        provider: deserializeStructParam(
          data['provider'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OrderServiceDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderServiceDetailStruct &&
        preferredTime == other.preferredTime &&
        cancelUntil == other.cancelUntil &&
        provider == other.provider;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([preferredTime, cancelUntil, provider]);
}

OrderServiceDetailStruct createOrderServiceDetailStruct({
  int? preferredTime,
  int? cancelUntil,
  UserStruct? provider,
}) =>
    OrderServiceDetailStruct(
      preferredTime: preferredTime,
      cancelUntil: cancelUntil,
      provider: provider ?? UserStruct(),
    );
