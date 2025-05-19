// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CouponStruct extends BaseStruct {
  CouponStruct({
    String? id,
    String? code,
    double? discount,
    int? maxUsage,
    int? expiresAt,
    bool? isActive,
    CustomerStruct? customer,
  })  : _id = id,
        _code = code,
        _discount = discount,
        _maxUsage = maxUsage,
        _expiresAt = expiresAt,
        _isActive = isActive,
        _customer = customer;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  set discount(double? val) => _discount = val;

  void incrementDiscount(double amount) => discount = discount + amount;

  bool hasDiscount() => _discount != null;

  // "max_usage" field.
  int? _maxUsage;
  int get maxUsage => _maxUsage ?? 0;
  set maxUsage(int? val) => _maxUsage = val;

  void incrementMaxUsage(int amount) => maxUsage = maxUsage + amount;

  bool hasMaxUsage() => _maxUsage != null;

  // "expires_at" field.
  int? _expiresAt;
  int get expiresAt => _expiresAt ?? 0;
  set expiresAt(int? val) => _expiresAt = val;

  void incrementExpiresAt(int amount) => expiresAt = expiresAt + amount;

  bool hasExpiresAt() => _expiresAt != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  // "customer" field.
  CustomerStruct? _customer;
  CustomerStruct get customer => _customer ?? CustomerStruct();
  set customer(CustomerStruct? val) => _customer = val;

  void updateCustomer(Function(CustomerStruct) updateFn) {
    updateFn(_customer ??= CustomerStruct());
  }

  bool hasCustomer() => _customer != null;

  static CouponStruct fromMap(Map<String, dynamic> data) => CouponStruct(
        id: data['id'] as String?,
        code: data['code'] as String?,
        discount: castToType<double>(data['discount']),
        maxUsage: castToType<int>(data['max_usage']),
        expiresAt: castToType<int>(data['expires_at']),
        isActive: data['is_active'] as bool?,
        customer: data['customer'] is CustomerStruct
            ? data['customer']
            : CustomerStruct.maybeFromMap(data['customer']),
      );

  static CouponStruct? maybeFromMap(dynamic data) =>
      data is Map ? CouponStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'discount': _discount,
        'max_usage': _maxUsage,
        'expires_at': _expiresAt,
        'is_active': _isActive,
        'customer': _customer?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
        'max_usage': serializeParam(
          _maxUsage,
          ParamType.int,
        ),
        'expires_at': serializeParam(
          _expiresAt,
          ParamType.int,
        ),
        'is_active': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CouponStruct fromSerializableMap(Map<String, dynamic> data) =>
      CouponStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.double,
          false,
        ),
        maxUsage: deserializeParam(
          data['max_usage'],
          ParamType.int,
          false,
        ),
        expiresAt: deserializeParam(
          data['expires_at'],
          ParamType.int,
          false,
        ),
        isActive: deserializeParam(
          data['is_active'],
          ParamType.bool,
          false,
        ),
        customer: deserializeStructParam(
          data['customer'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CouponStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CouponStruct &&
        id == other.id &&
        code == other.code &&
        discount == other.discount &&
        maxUsage == other.maxUsage &&
        expiresAt == other.expiresAt &&
        isActive == other.isActive &&
        customer == other.customer;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, code, discount, maxUsage, expiresAt, isActive, customer]);
}

CouponStruct createCouponStruct({
  String? id,
  String? code,
  double? discount,
  int? maxUsage,
  int? expiresAt,
  bool? isActive,
  CustomerStruct? customer,
}) =>
    CouponStruct(
      id: id,
      code: code,
      discount: discount,
      maxUsage: maxUsage,
      expiresAt: expiresAt,
      isActive: isActive,
      customer: customer ?? CustomerStruct(),
    );
