// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveryAreaStruct extends BaseStruct {
  DeliveryAreaStruct({
    String? id,
  }) : _id = id;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static DeliveryAreaStruct fromMap(Map<String, dynamic> data) =>
      DeliveryAreaStruct(
        id: data['id'] as String?,
      );

  static DeliveryAreaStruct? maybeFromMap(dynamic data) => data is Map
      ? DeliveryAreaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static DeliveryAreaStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeliveryAreaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DeliveryAreaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DeliveryAreaStruct && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([id]);
}

DeliveryAreaStruct createDeliveryAreaStruct({
  String? id,
}) =>
    DeliveryAreaStruct(
      id: id,
    );
