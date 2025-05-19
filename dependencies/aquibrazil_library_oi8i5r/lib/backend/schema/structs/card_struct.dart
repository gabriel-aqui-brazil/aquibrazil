// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardStruct extends BaseStruct {
  CardStruct({
    String? id,
    String? brand,
    String? last4,
    String? funding,
    int? expMonth,
    int? expYear,
    bool? isDefault,
    String? nickname,
  })  : _id = id,
        _brand = brand,
        _last4 = last4,
        _funding = funding,
        _expMonth = expMonth,
        _expYear = expYear,
        _isDefault = isDefault,
        _nickname = nickname;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) => _brand = val;

  bool hasBrand() => _brand != null;

  // "last4" field.
  String? _last4;
  String get last4 => _last4 ?? '';
  set last4(String? val) => _last4 = val;

  bool hasLast4() => _last4 != null;

  // "funding" field.
  String? _funding;
  String get funding => _funding ?? '';
  set funding(String? val) => _funding = val;

  bool hasFunding() => _funding != null;

  // "exp_month" field.
  int? _expMonth;
  int get expMonth => _expMonth ?? 0;
  set expMonth(int? val) => _expMonth = val;

  void incrementExpMonth(int amount) => expMonth = expMonth + amount;

  bool hasExpMonth() => _expMonth != null;

  // "exp_year" field.
  int? _expYear;
  int get expYear => _expYear ?? 0;
  set expYear(int? val) => _expYear = val;

  void incrementExpYear(int amount) => expYear = expYear + amount;

  bool hasExpYear() => _expYear != null;

  // "is_default" field.
  bool? _isDefault;
  bool get isDefault => _isDefault ?? false;
  set isDefault(bool? val) => _isDefault = val;

  bool hasIsDefault() => _isDefault != null;

  // "nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '';
  set nickname(String? val) => _nickname = val;

  bool hasNickname() => _nickname != null;

  static CardStruct fromMap(Map<String, dynamic> data) => CardStruct(
        id: data['id'] as String?,
        brand: data['brand'] as String?,
        last4: data['last4'] as String?,
        funding: data['funding'] as String?,
        expMonth: castToType<int>(data['exp_month']),
        expYear: castToType<int>(data['exp_year']),
        isDefault: data['is_default'] as bool?,
        nickname: data['nickname'] as String?,
      );

  static CardStruct? maybeFromMap(dynamic data) =>
      data is Map ? CardStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'brand': _brand,
        'last4': _last4,
        'funding': _funding,
        'exp_month': _expMonth,
        'exp_year': _expYear,
        'is_default': _isDefault,
        'nickname': _nickname,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'last4': serializeParam(
          _last4,
          ParamType.String,
        ),
        'funding': serializeParam(
          _funding,
          ParamType.String,
        ),
        'exp_month': serializeParam(
          _expMonth,
          ParamType.int,
        ),
        'exp_year': serializeParam(
          _expYear,
          ParamType.int,
        ),
        'is_default': serializeParam(
          _isDefault,
          ParamType.bool,
        ),
        'nickname': serializeParam(
          _nickname,
          ParamType.String,
        ),
      }.withoutNulls;

  static CardStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        last4: deserializeParam(
          data['last4'],
          ParamType.String,
          false,
        ),
        funding: deserializeParam(
          data['funding'],
          ParamType.String,
          false,
        ),
        expMonth: deserializeParam(
          data['exp_month'],
          ParamType.int,
          false,
        ),
        expYear: deserializeParam(
          data['exp_year'],
          ParamType.int,
          false,
        ),
        isDefault: deserializeParam(
          data['is_default'],
          ParamType.bool,
          false,
        ),
        nickname: deserializeParam(
          data['nickname'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardStruct &&
        id == other.id &&
        brand == other.brand &&
        last4 == other.last4 &&
        funding == other.funding &&
        expMonth == other.expMonth &&
        expYear == other.expYear &&
        isDefault == other.isDefault &&
        nickname == other.nickname;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, brand, last4, funding, expMonth, expYear, isDefault, nickname]);
}

CardStruct createCardStruct({
  String? id,
  String? brand,
  String? last4,
  String? funding,
  int? expMonth,
  int? expYear,
  bool? isDefault,
  String? nickname,
}) =>
    CardStruct(
      id: id,
      brand: brand,
      last4: last4,
      funding: funding,
      expMonth: expMonth,
      expYear: expYear,
      isDefault: isDefault,
      nickname: nickname,
    );
