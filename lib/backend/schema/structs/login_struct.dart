// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginStruct extends BaseStruct {
  LoginStruct({
    String? authToken,
    int? expirationToken,
    List<AddressStruct>? address,
    String? stripeId,
    String? firstName,
    String? lastName,
    String? email,
    String? membershipStatus,
    String? membershipPlanId,
  })  : _authToken = authToken,
        _expirationToken = expirationToken,
        _address = address,
        _stripeId = stripeId,
        _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _membershipStatus = membershipStatus,
        _membershipPlanId = membershipPlanId;

  // "auth_token" field.
  String? _authToken;
  String get authToken => _authToken ?? '';
  set authToken(String? val) => _authToken = val;

  bool hasAuthToken() => _authToken != null;

  // "expiration_token" field.
  int? _expirationToken;
  int get expirationToken => _expirationToken ?? 0;
  set expirationToken(int? val) => _expirationToken = val;

  void incrementExpirationToken(int amount) =>
      expirationToken = expirationToken + amount;

  bool hasExpirationToken() => _expirationToken != null;

  // "address" field.
  List<AddressStruct>? _address;
  List<AddressStruct> get address => _address ?? const [];
  set address(List<AddressStruct>? val) => _address = val;

  void updateAddress(Function(List<AddressStruct>) updateFn) {
    updateFn(_address ??= []);
  }

  bool hasAddress() => _address != null;

  // "stripe_id" field.
  String? _stripeId;
  String get stripeId => _stripeId ?? '';
  set stripeId(String? val) => _stripeId = val;

  bool hasStripeId() => _stripeId != null;

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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "membership_status" field.
  String? _membershipStatus;
  String get membershipStatus => _membershipStatus ?? '';
  set membershipStatus(String? val) => _membershipStatus = val;

  bool hasMembershipStatus() => _membershipStatus != null;

  // "membership_plan_id" field.
  String? _membershipPlanId;
  String get membershipPlanId => _membershipPlanId ?? '';
  set membershipPlanId(String? val) => _membershipPlanId = val;

  bool hasMembershipPlanId() => _membershipPlanId != null;

  static LoginStruct fromMap(Map<String, dynamic> data) => LoginStruct(
        authToken: data['auth_token'] as String?,
        expirationToken: castToType<int>(data['expiration_token']),
        address: getStructList(
          data['address'],
          AddressStruct.fromMap,
        ),
        stripeId: data['stripe_id'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        email: data['email'] as String?,
        membershipStatus: data['membership_status'] as String?,
        membershipPlanId: data['membership_plan_id'] as String?,
      );

  static LoginStruct? maybeFromMap(dynamic data) =>
      data is Map ? LoginStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'auth_token': _authToken,
        'expiration_token': _expirationToken,
        'address': _address?.map((e) => e.toMap()).toList(),
        'stripe_id': _stripeId,
        'first_name': _firstName,
        'last_name': _lastName,
        'email': _email,
        'membership_status': _membershipStatus,
        'membership_plan_id': _membershipPlanId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'auth_token': serializeParam(
          _authToken,
          ParamType.String,
        ),
        'expiration_token': serializeParam(
          _expirationToken,
          ParamType.int,
        ),
        'address': serializeParam(
          _address,
          ParamType.DataStruct,
          isList: true,
        ),
        'stripe_id': serializeParam(
          _stripeId,
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
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'membership_status': serializeParam(
          _membershipStatus,
          ParamType.String,
        ),
        'membership_plan_id': serializeParam(
          _membershipPlanId,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoginStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoginStruct(
        authToken: deserializeParam(
          data['auth_token'],
          ParamType.String,
          false,
        ),
        expirationToken: deserializeParam(
          data['expiration_token'],
          ParamType.int,
          false,
        ),
        address: deserializeStructParam<AddressStruct>(
          data['address'],
          ParamType.DataStruct,
          true,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
        stripeId: deserializeParam(
          data['stripe_id'],
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
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        membershipStatus: deserializeParam(
          data['membership_status'],
          ParamType.String,
          false,
        ),
        membershipPlanId: deserializeParam(
          data['membership_plan_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoginStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LoginStruct &&
        authToken == other.authToken &&
        expirationToken == other.expirationToken &&
        listEquality.equals(address, other.address) &&
        stripeId == other.stripeId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        membershipStatus == other.membershipStatus &&
        membershipPlanId == other.membershipPlanId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        authToken,
        expirationToken,
        address,
        stripeId,
        firstName,
        lastName,
        email,
        membershipStatus,
        membershipPlanId
      ]);
}

LoginStruct createLoginStruct({
  String? authToken,
  int? expirationToken,
  String? stripeId,
  String? firstName,
  String? lastName,
  String? email,
  String? membershipStatus,
  String? membershipPlanId,
}) =>
    LoginStruct(
      authToken: authToken,
      expirationToken: expirationToken,
      stripeId: stripeId,
      firstName: firstName,
      lastName: lastName,
      email: email,
      membershipStatus: membershipStatus,
      membershipPlanId: membershipPlanId,
    );
