// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? id,
    String? profilePicture,
    String? firstName,
    String? lastName,
    CardStruct? defaultCard,
    String? phone,
  })  : _id = id,
        _profilePicture = profilePicture,
        _firstName = firstName,
        _lastName = lastName,
        _defaultCard = defaultCard,
        _phone = phone;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "profile_picture" field.
  String? _profilePicture;
  String get profilePicture => _profilePicture ?? '';
  set profilePicture(String? val) => _profilePicture = val;

  bool hasProfilePicture() => _profilePicture != null;

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

  // "default_card" field.
  CardStruct? _defaultCard;
  CardStruct get defaultCard => _defaultCard ?? CardStruct();
  set defaultCard(CardStruct? val) => _defaultCard = val;

  void updateDefaultCard(Function(CardStruct) updateFn) {
    updateFn(_defaultCard ??= CardStruct());
  }

  bool hasDefaultCard() => _defaultCard != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: data['id'] as String?,
        profilePicture: data['profile_picture'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        defaultCard: data['default_card'] is CardStruct
            ? data['default_card']
            : CardStruct.maybeFromMap(data['default_card']),
        phone: data['phone'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'profile_picture': _profilePicture,
        'first_name': _firstName,
        'last_name': _lastName,
        'default_card': _defaultCard?.toMap(),
        'phone': _phone,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'profile_picture': serializeParam(
          _profilePicture,
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
        'default_card': serializeParam(
          _defaultCard,
          ParamType.DataStruct,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        profilePicture: deserializeParam(
          data['profile_picture'],
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
        defaultCard: deserializeStructParam(
          data['default_card'],
          ParamType.DataStruct,
          false,
          structBuilder: CardStruct.fromSerializableMap,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        profilePicture == other.profilePicture &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        defaultCard == other.defaultCard &&
        phone == other.phone;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, profilePicture, firstName, lastName, defaultCard, phone]);
}

UserStruct createUserStruct({
  String? id,
  String? profilePicture,
  String? firstName,
  String? lastName,
  CardStruct? defaultCard,
  String? phone,
}) =>
    UserStruct(
      id: id,
      profilePicture: profilePicture,
      firstName: firstName,
      lastName: lastName,
      defaultCard: defaultCard ?? CardStruct(),
      phone: phone,
    );
