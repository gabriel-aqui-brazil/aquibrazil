// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends BaseStruct {
  AddressStruct({
    String? id,
    int? createdAt,
    String? address,
    String? zipcode,
    String? city,
    String? state,
    String? address2,
    String? latitude,
    String? longitude,
    bool? isMain,
    String? type,
  })  : _id = id,
        _createdAt = createdAt,
        _address = address,
        _zipcode = zipcode,
        _city = city,
        _state = state,
        _address2 = address2,
        _latitude = latitude,
        _longitude = longitude,
        _isMain = isMain,
        _type = type;

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

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "zipcode" field.
  String? _zipcode;
  String get zipcode => _zipcode ?? '';
  set zipcode(String? val) => _zipcode = val;

  bool hasZipcode() => _zipcode != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "address2" field.
  String? _address2;
  String get address2 => _address2 ?? '';
  set address2(String? val) => _address2 = val;

  bool hasAddress2() => _address2 != null;

  // "latitude" field.
  String? _latitude;
  String get latitude => _latitude ?? '';
  set latitude(String? val) => _latitude = val;

  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  String? _longitude;
  String get longitude => _longitude ?? '';
  set longitude(String? val) => _longitude = val;

  bool hasLongitude() => _longitude != null;

  // "is_main" field.
  bool? _isMain;
  bool get isMain => _isMain ?? false;
  set isMain(bool? val) => _isMain = val;

  bool hasIsMain() => _isMain != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        address: data['address'] as String?,
        zipcode: data['zipcode'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        address2: data['address2'] as String?,
        latitude: data['latitude'] as String?,
        longitude: data['longitude'] as String?,
        isMain: data['is_main'] as bool?,
        type: data['type'] as String?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'address': _address,
        'zipcode': _zipcode,
        'city': _city,
        'state': _state,
        'address2': _address2,
        'latitude': _latitude,
        'longitude': _longitude,
        'is_main': _isMain,
        'type': _type,
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
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'zipcode': serializeParam(
          _zipcode,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'address2': serializeParam(
          _address2,
          ParamType.String,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.String,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.String,
        ),
        'is_main': serializeParam(
          _isMain,
          ParamType.bool,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
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
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        zipcode: deserializeParam(
          data['zipcode'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        address2: deserializeParam(
          data['address2'],
          ParamType.String,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.String,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.String,
          false,
        ),
        isMain: deserializeParam(
          data['is_main'],
          ParamType.bool,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        address == other.address &&
        zipcode == other.zipcode &&
        city == other.city &&
        state == other.state &&
        address2 == other.address2 &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        isMain == other.isMain &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        address,
        zipcode,
        city,
        state,
        address2,
        latitude,
        longitude,
        isMain,
        type
      ]);
}

AddressStruct createAddressStruct({
  String? id,
  int? createdAt,
  String? address,
  String? zipcode,
  String? city,
  String? state,
  String? address2,
  String? latitude,
  String? longitude,
  bool? isMain,
  String? type,
}) =>
    AddressStruct(
      id: id,
      createdAt: createdAt,
      address: address,
      zipcode: zipcode,
      city: city,
      state: state,
      address2: address2,
      latitude: latitude,
      longitude: longitude,
      isMain: isMain,
      type: type,
    );
