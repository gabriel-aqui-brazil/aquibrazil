// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerStruct extends BaseStruct {
  CustomerStruct({
    String? id,
    int? createdAt,
    String? authId,
    String? firstName,
    String? lastName,
    String? phone,
    String? email,
    String? couponId,
    AddressStruct? address,
    double? cashbackBalance,
    MembershipStruct? membership,
    double? cashbackTransactionsAmount,
  })  : _id = id,
        _createdAt = createdAt,
        _authId = authId,
        _firstName = firstName,
        _lastName = lastName,
        _phone = phone,
        _email = email,
        _couponId = couponId,
        _address = address,
        _cashbackBalance = cashbackBalance,
        _membership = membership,
        _cashbackTransactionsAmount = cashbackTransactionsAmount;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "auth_id" field.
  String? _authId;
  String get authId => _authId ?? '';
  set authId(String? val) => _authId = val;

  bool hasAuthId() => _authId != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "coupon_id" field.
  String? _couponId;
  String get couponId => _couponId ?? '';
  set couponId(String? val) => _couponId = val;

  bool hasCouponId() => _couponId != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  set address(AddressStruct? val) => _address = val;

  void updateAddress(Function(AddressStruct) updateFn) {
    updateFn(_address ??= AddressStruct());
  }

  bool hasAddress() => _address != null;

  // "cashback_balance" field.
  double? _cashbackBalance;
  double get cashbackBalance => _cashbackBalance ?? 0.0;
  set cashbackBalance(double? val) => _cashbackBalance = val;

  void incrementCashbackBalance(double amount) =>
      cashbackBalance = cashbackBalance + amount;

  bool hasCashbackBalance() => _cashbackBalance != null;

  // "membership" field.
  MembershipStruct? _membership;
  MembershipStruct get membership => _membership ?? MembershipStruct();
  set membership(MembershipStruct? val) => _membership = val;

  void updateMembership(Function(MembershipStruct) updateFn) {
    updateFn(_membership ??= MembershipStruct());
  }

  bool hasMembership() => _membership != null;

  // "cashback_transactions_amount" field.
  double? _cashbackTransactionsAmount;
  double get cashbackTransactionsAmount => _cashbackTransactionsAmount ?? 0.0;
  set cashbackTransactionsAmount(double? val) =>
      _cashbackTransactionsAmount = val;

  void incrementCashbackTransactionsAmount(double amount) =>
      cashbackTransactionsAmount = cashbackTransactionsAmount + amount;

  bool hasCashbackTransactionsAmount() => _cashbackTransactionsAmount != null;

  static CustomerStruct fromMap(Map<String, dynamic> data) => CustomerStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        authId: data['auth_id'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        phone: data['phone'] as String?,
        email: data['email'] as String?,
        couponId: data['coupon_id'] as String?,
        address: data['address'] is AddressStruct
            ? data['address']
            : AddressStruct.maybeFromMap(data['address']),
        cashbackBalance: castToType<double>(data['cashback_balance']),
        membership: data['membership'] is MembershipStruct
            ? data['membership']
            : MembershipStruct.maybeFromMap(data['membership']),
        cashbackTransactionsAmount:
            castToType<double>(data['cashback_transactions_amount']),
      );

  static CustomerStruct? maybeFromMap(dynamic data) =>
      data is Map ? CustomerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'auth_id': _authId,
        'first_name': _firstName,
        'last_name': _lastName,
        'phone': _phone,
        'email': _email,
        'coupon_id': _couponId,
        'address': _address?.toMap(),
        'cashback_balance': _cashbackBalance,
        'membership': _membership?.toMap(),
        'cashback_transactions_amount': _cashbackTransactionsAmount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'auth_id': serializeParam(
          _authId,
          ParamType.String,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'coupon_id': serializeParam(
          _couponId,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.DataStruct,
        ),
        'cashback_balance': serializeParam(
          _cashbackBalance,
          ParamType.double,
        ),
        'membership': serializeParam(
          _membership,
          ParamType.DataStruct,
        ),
        'cashback_transactions_amount': serializeParam(
          _cashbackTransactionsAmount,
          ParamType.double,
        ),
      }.withoutNulls;

  static CustomerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        authId: deserializeParam(
          data['auth_id'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        couponId: deserializeParam(
          data['coupon_id'],
          ParamType.String,
          false,
        ),
        address: deserializeStructParam(
          data['address'],
          ParamType.DataStruct,
          false,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
        cashbackBalance: deserializeParam(
          data['cashback_balance'],
          ParamType.double,
          false,
        ),
        membership: deserializeStructParam(
          data['membership'],
          ParamType.DataStruct,
          false,
          structBuilder: MembershipStruct.fromSerializableMap,
        ),
        cashbackTransactionsAmount: deserializeParam(
          data['cashback_transactions_amount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CustomerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        authId == other.authId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        phone == other.phone &&
        email == other.email &&
        couponId == other.couponId &&
        address == other.address &&
        cashbackBalance == other.cashbackBalance &&
        membership == other.membership &&
        cashbackTransactionsAmount == other.cashbackTransactionsAmount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        authId,
        firstName,
        lastName,
        phone,
        email,
        couponId,
        address,
        cashbackBalance,
        membership,
        cashbackTransactionsAmount
      ]);
}

CustomerStruct createCustomerStruct({
  String? id,
  int? createdAt,
  String? authId,
  String? firstName,
  String? lastName,
  String? phone,
  String? email,
  String? couponId,
  AddressStruct? address,
  double? cashbackBalance,
  MembershipStruct? membership,
  double? cashbackTransactionsAmount,
}) =>
    CustomerStruct(
      id: id,
      createdAt: createdAt,
      authId: authId,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      email: email,
      couponId: couponId,
      address: address ?? AddressStruct(),
      cashbackBalance: cashbackBalance,
      membership: membership ?? MembershipStruct(),
      cashbackTransactionsAmount: cashbackTransactionsAmount,
    );
