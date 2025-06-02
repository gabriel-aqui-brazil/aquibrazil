// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import "package:aquibrazil_library_oi8i5r/flutter_flow/nav/serialization_util.dart"
    as aquibrazil_library_oi8i5r_serialization_util;

class UserStruct extends BaseStruct {
  UserStruct({
    String? id,
    String? authToken,
    int? expirationToken,
    String? firstName,
    String? lastName,
    String? email,
    bool? biometric,
    List<String>? listPermission,
    String? profilePicture,
    LatLng? location,
    AddressStruct? address,
    double? cashbackEarned,
    String? phone,
    String? timezone,
    aquibrazil_library_oi8i5r_data_schema.CardStruct? defaultCard,
    String? document,
    String? lastOrderId,
    bool? isSignup,
  })  : _id = id,
        _authToken = authToken,
        _expirationToken = expirationToken,
        _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _biometric = biometric,
        _listPermission = listPermission,
        _profilePicture = profilePicture,
        _location = location,
        _address = address,
        _cashbackEarned = cashbackEarned,
        _phone = phone,
        _timezone = timezone,
        _defaultCard = defaultCard,
        _document = document,
        _lastOrderId = lastOrderId,
        _isSignup = isSignup;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "biometric" field.
  bool? _biometric;
  bool get biometric => _biometric ?? false;
  set biometric(bool? val) => _biometric = val;

  bool hasBiometric() => _biometric != null;

  // "list_permission" field.
  List<String>? _listPermission;
  List<String> get listPermission => _listPermission ?? const [];
  set listPermission(List<String>? val) => _listPermission = val;

  void updateListPermission(Function(List<String>) updateFn) {
    updateFn(_listPermission ??= []);
  }

  bool hasListPermission() => _listPermission != null;

  // "profile_picture" field.
  String? _profilePicture;
  String get profilePicture => _profilePicture ?? '';
  set profilePicture(String? val) => _profilePicture = val;

  bool hasProfilePicture() => _profilePicture != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  set location(LatLng? val) => _location = val;

  bool hasLocation() => _location != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  set address(AddressStruct? val) => _address = val;

  void updateAddress(Function(AddressStruct) updateFn) {
    updateFn(_address ??= AddressStruct());
  }

  bool hasAddress() => _address != null;

  // "cashback_earned" field.
  double? _cashbackEarned;
  double get cashbackEarned => _cashbackEarned ?? 0.0;
  set cashbackEarned(double? val) => _cashbackEarned = val;

  void incrementCashbackEarned(double amount) =>
      cashbackEarned = cashbackEarned + amount;

  bool hasCashbackEarned() => _cashbackEarned != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "timezone" field.
  String? _timezone;
  String get timezone => _timezone ?? '';
  set timezone(String? val) => _timezone = val;

  bool hasTimezone() => _timezone != null;

  // "default_card" field.
  aquibrazil_library_oi8i5r_data_schema.CardStruct? _defaultCard;
  aquibrazil_library_oi8i5r_data_schema.CardStruct get defaultCard =>
      _defaultCard ?? aquibrazil_library_oi8i5r_data_schema.CardStruct();
  set defaultCard(aquibrazil_library_oi8i5r_data_schema.CardStruct? val) =>
      _defaultCard = val;

  void updateDefaultCard(
      Function(aquibrazil_library_oi8i5r_data_schema.CardStruct) updateFn) {
    updateFn(
        _defaultCard ??= aquibrazil_library_oi8i5r_data_schema.CardStruct());
  }

  bool hasDefaultCard() => _defaultCard != null;

  // "document" field.
  String? _document;
  String get document => _document ?? '';
  set document(String? val) => _document = val;

  bool hasDocument() => _document != null;

  // "last_order_id" field.
  String? _lastOrderId;
  String get lastOrderId => _lastOrderId ?? '';
  set lastOrderId(String? val) => _lastOrderId = val;

  bool hasLastOrderId() => _lastOrderId != null;

  // "is_signup" field.
  bool? _isSignup;
  bool get isSignup => _isSignup ?? false;
  set isSignup(bool? val) => _isSignup = val;

  bool hasIsSignup() => _isSignup != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: data['id'] as String?,
        authToken: data['auth_token'] as String?,
        expirationToken: castToType<int>(data['expiration_token']),
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        email: data['email'] as String?,
        biometric: data['biometric'] as bool?,
        listPermission: getDataList(data['list_permission']),
        profilePicture: data['profile_picture'] as String?,
        location: data['location'] as LatLng?,
        address: data['address'] is AddressStruct
            ? data['address']
            : AddressStruct.maybeFromMap(data['address']),
        cashbackEarned: castToType<double>(data['cashback_earned']),
        phone: data['phone'] as String?,
        timezone: data['timezone'] as String?,
        defaultCard: data['default_card']
                is aquibrazil_library_oi8i5r_data_schema.CardStruct
            ? data['default_card']
            : aquibrazil_library_oi8i5r_data_schema.CardStruct.maybeFromMap(
                data['default_card']),
        document: data['document'] as String?,
        lastOrderId: data['last_order_id'] as String?,
        isSignup: data['is_signup'] as bool?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'auth_token': _authToken,
        'expiration_token': _expirationToken,
        'first_name': _firstName,
        'last_name': _lastName,
        'email': _email,
        'biometric': _biometric,
        'list_permission': _listPermission,
        'profile_picture': _profilePicture,
        'location': _location,
        'address': _address?.toMap(),
        'cashback_earned': _cashbackEarned,
        'phone': _phone,
        'timezone': _timezone,
        'default_card': _defaultCard?.toMap(),
        'document': _document,
        'last_order_id': _lastOrderId,
        'is_signup': _isSignup,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'auth_token': serializeParam(
          _authToken,
          ParamType.String,
        ),
        'expiration_token': serializeParam(
          _expirationToken,
          ParamType.int,
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
        'biometric': serializeParam(
          _biometric,
          ParamType.bool,
        ),
        'list_permission': serializeParam(
          _listPermission,
          ParamType.String,
          isList: true,
        ),
        'profile_picture': serializeParam(
          _profilePicture,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.LatLng,
        ),
        'address': serializeParam(
          _address,
          ParamType.DataStruct,
        ),
        'cashback_earned': serializeParam(
          _cashbackEarned,
          ParamType.double,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'timezone': serializeParam(
          _timezone,
          ParamType.String,
        ),
        'default_card':
            aquibrazil_library_oi8i5r_serialization_util.serializeParam(
          _defaultCard,
          aquibrazil_library_oi8i5r_serialization_util.ParamType.DataStruct,
        ),
        'document': serializeParam(
          _document,
          ParamType.String,
        ),
        'last_order_id': serializeParam(
          _lastOrderId,
          ParamType.String,
        ),
        'is_signup': serializeParam(
          _isSignup,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
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
        biometric: deserializeParam(
          data['biometric'],
          ParamType.bool,
          false,
        ),
        listPermission: deserializeParam<String>(
          data['list_permission'],
          ParamType.String,
          true,
        ),
        profilePicture: deserializeParam(
          data['profile_picture'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.LatLng,
          false,
        ),
        address: deserializeStructParam(
          data['address'],
          ParamType.DataStruct,
          false,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
        cashbackEarned: deserializeParam(
          data['cashback_earned'],
          ParamType.double,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        timezone: deserializeParam(
          data['timezone'],
          ParamType.String,
          false,
        ),
        defaultCard: deserializeStructParam(
          data['default_card'],
          ParamType.DataStruct,
          false,
          structBuilder: aquibrazil_library_oi8i5r_data_schema
              .CardStruct.fromSerializableMap,
        ),
        document: deserializeParam(
          data['document'],
          ParamType.String,
          false,
        ),
        lastOrderId: deserializeParam(
          data['last_order_id'],
          ParamType.String,
          false,
        ),
        isSignup: deserializeParam(
          data['is_signup'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserStruct &&
        id == other.id &&
        authToken == other.authToken &&
        expirationToken == other.expirationToken &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        biometric == other.biometric &&
        listEquality.equals(listPermission, other.listPermission) &&
        profilePicture == other.profilePicture &&
        location == other.location &&
        address == other.address &&
        cashbackEarned == other.cashbackEarned &&
        phone == other.phone &&
        timezone == other.timezone &&
        defaultCard == other.defaultCard &&
        document == other.document &&
        lastOrderId == other.lastOrderId &&
        isSignup == other.isSignup;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        authToken,
        expirationToken,
        firstName,
        lastName,
        email,
        biometric,
        listPermission,
        profilePicture,
        location,
        address,
        cashbackEarned,
        phone,
        timezone,
        defaultCard,
        document,
        lastOrderId,
        isSignup
      ]);
}

UserStruct createUserStruct({
  String? id,
  String? authToken,
  int? expirationToken,
  String? firstName,
  String? lastName,
  String? email,
  bool? biometric,
  String? profilePicture,
  LatLng? location,
  AddressStruct? address,
  double? cashbackEarned,
  String? phone,
  String? timezone,
  aquibrazil_library_oi8i5r_data_schema.CardStruct? defaultCard,
  String? document,
  String? lastOrderId,
  bool? isSignup,
}) =>
    UserStruct(
      id: id,
      authToken: authToken,
      expirationToken: expirationToken,
      firstName: firstName,
      lastName: lastName,
      email: email,
      biometric: biometric,
      profilePicture: profilePicture,
      location: location,
      address: address ?? AddressStruct(),
      cashbackEarned: cashbackEarned,
      phone: phone,
      timezone: timezone,
      defaultCard:
          defaultCard ?? aquibrazil_library_oi8i5r_data_schema.CardStruct(),
      document: document,
      lastOrderId: lastOrderId,
      isSignup: isSignup,
    );
