// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PriceStruct extends BaseStruct {
  PriceStruct({
    String? id,
    double? value,
    String? type,
    double? discountPercentage,
  })  : _id = id,
        _value = value,
        _type = type,
        _discountPercentage = discountPercentage;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  set value(double? val) => _value = val;

  void incrementValue(double amount) => value = value + amount;

  bool hasValue() => _value != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "discount_percentage" field.
  double? _discountPercentage;
  double get discountPercentage => _discountPercentage ?? 0.0;
  set discountPercentage(double? val) => _discountPercentage = val;

  void incrementDiscountPercentage(double amount) =>
      discountPercentage = discountPercentage + amount;

  bool hasDiscountPercentage() => _discountPercentage != null;

  static PriceStruct fromMap(Map<String, dynamic> data) => PriceStruct(
        id: data['id'] as String?,
        value: castToType<double>(data['value']),
        type: data['type'] as String?,
        discountPercentage: castToType<double>(data['discount_percentage']),
      );

  static PriceStruct? maybeFromMap(dynamic data) =>
      data is Map ? PriceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'value': _value,
        'type': _type,
        'discount_percentage': _discountPercentage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.double,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'discount_percentage': serializeParam(
          _discountPercentage,
          ParamType.double,
        ),
      }.withoutNulls;

  static PriceStruct fromSerializableMap(Map<String, dynamic> data) =>
      PriceStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.double,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        discountPercentage: deserializeParam(
          data['discount_percentage'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PriceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PriceStruct &&
        id == other.id &&
        value == other.value &&
        type == other.type &&
        discountPercentage == other.discountPercentage;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, value, type, discountPercentage]);
}

PriceStruct createPriceStruct({
  String? id,
  double? value,
  String? type,
  double? discountPercentage,
}) =>
    PriceStruct(
      id: id,
      value: value,
      type: type,
      discountPercentage: discountPercentage,
    );
