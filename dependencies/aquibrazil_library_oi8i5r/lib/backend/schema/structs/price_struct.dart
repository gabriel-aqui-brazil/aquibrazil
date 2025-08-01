// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PriceStruct extends BaseStruct {
  PriceStruct({
    String? id,
    double? value,
    double? originalPrice,
    String? type,
    double? discountPercentage,
    String? name,
    int? days,
    String? typePlan,
  })  : _id = id,
        _value = value,
        _originalPrice = originalPrice,
        _type = type,
        _discountPercentage = discountPercentage,
        _name = name,
        _days = days,
        _typePlan = typePlan;

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

  // "original_price" field.
  double? _originalPrice;
  double get originalPrice => _originalPrice ?? 0.0;
  set originalPrice(double? val) => _originalPrice = val;

  void incrementOriginalPrice(double amount) =>
      originalPrice = originalPrice + amount;

  bool hasOriginalPrice() => _originalPrice != null;

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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "days" field.
  int? _days;
  int get days => _days ?? 0;
  set days(int? val) => _days = val;

  void incrementDays(int amount) => days = days + amount;

  bool hasDays() => _days != null;

  // "type_plan" field.
  String? _typePlan;
  String get typePlan => _typePlan ?? '';
  set typePlan(String? val) => _typePlan = val;

  bool hasTypePlan() => _typePlan != null;

  static PriceStruct fromMap(Map<String, dynamic> data) => PriceStruct(
        id: data['id'] as String?,
        value: castToType<double>(data['value']),
        originalPrice: castToType<double>(data['original_price']),
        type: data['type'] as String?,
        discountPercentage: castToType<double>(data['discount_percentage']),
        name: data['name'] as String?,
        days: castToType<int>(data['days']),
        typePlan: data['type_plan'] as String?,
      );

  static PriceStruct? maybeFromMap(dynamic data) =>
      data is Map ? PriceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'value': _value,
        'original_price': _originalPrice,
        'type': _type,
        'discount_percentage': _discountPercentage,
        'name': _name,
        'days': _days,
        'type_plan': _typePlan,
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
        'original_price': serializeParam(
          _originalPrice,
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
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'days': serializeParam(
          _days,
          ParamType.int,
        ),
        'type_plan': serializeParam(
          _typePlan,
          ParamType.String,
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
        originalPrice: deserializeParam(
          data['original_price'],
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
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        days: deserializeParam(
          data['days'],
          ParamType.int,
          false,
        ),
        typePlan: deserializeParam(
          data['type_plan'],
          ParamType.String,
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
        originalPrice == other.originalPrice &&
        type == other.type &&
        discountPercentage == other.discountPercentage &&
        name == other.name &&
        days == other.days &&
        typePlan == other.typePlan;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        value,
        originalPrice,
        type,
        discountPercentage,
        name,
        days,
        typePlan
      ]);
}

PriceStruct createPriceStruct({
  String? id,
  double? value,
  double? originalPrice,
  String? type,
  double? discountPercentage,
  String? name,
  int? days,
  String? typePlan,
}) =>
    PriceStruct(
      id: id,
      value: value,
      originalPrice: originalPrice,
      type: type,
      discountPercentage: discountPercentage,
      name: name,
      days: days,
      typePlan: typePlan,
    );
