// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartServiceStruct extends BaseStruct {
  CartServiceStruct({
    int? preferredTime,
    UserStruct? provider,
  })  : _preferredTime = preferredTime,
        _provider = provider;

  // "preferred_time" field.
  int? _preferredTime;
  int get preferredTime => _preferredTime ?? 0;
  set preferredTime(int? val) => _preferredTime = val;

  void incrementPreferredTime(int amount) =>
      preferredTime = preferredTime + amount;

  bool hasPreferredTime() => _preferredTime != null;

  // "provider" field.
  UserStruct? _provider;
  UserStruct get provider => _provider ?? UserStruct();
  set provider(UserStruct? val) => _provider = val;

  void updateProvider(Function(UserStruct) updateFn) {
    updateFn(_provider ??= UserStruct());
  }

  bool hasProvider() => _provider != null;

  static CartServiceStruct fromMap(Map<String, dynamic> data) =>
      CartServiceStruct(
        preferredTime: castToType<int>(data['preferred_time']),
        provider: data['provider'] is UserStruct
            ? data['provider']
            : UserStruct.maybeFromMap(data['provider']),
      );

  static CartServiceStruct? maybeFromMap(dynamic data) => data is Map
      ? CartServiceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'preferred_time': _preferredTime,
        'provider': _provider?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'preferred_time': serializeParam(
          _preferredTime,
          ParamType.int,
        ),
        'provider': serializeParam(
          _provider,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CartServiceStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartServiceStruct(
        preferredTime: deserializeParam(
          data['preferred_time'],
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
  String toString() => 'CartServiceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartServiceStruct &&
        preferredTime == other.preferredTime &&
        provider == other.provider;
  }

  @override
  int get hashCode => const ListEquality().hash([preferredTime, provider]);
}

CartServiceStruct createCartServiceStruct({
  int? preferredTime,
  UserStruct? provider,
}) =>
    CartServiceStruct(
      preferredTime: preferredTime,
      provider: provider ?? UserStruct(),
    );
