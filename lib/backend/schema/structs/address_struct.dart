// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends BaseStruct {
  AddressStruct({
    String? id,
    String? address,
    String? zipcode,
    String? city,
    String? state,
    String? address2,
    String? latitude,
    String? longitude,
    String? type,
    String? referencePoint,
    String? miles,
    String? number,
    bool? isMain,
  })  : _id = id,
        _address = address,
        _zipcode = zipcode,
        _city = city,
        _state = state,
        _address2 = address2,
        _latitude = latitude,
        _longitude = longitude,
        _type = type,
        _referencePoint = referencePoint,
        _miles = miles,
        _number = number,
        _isMain = isMain;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "reference_point" field.
  String? _referencePoint;
  String get referencePoint => _referencePoint ?? '';
  set referencePoint(String? val) => _referencePoint = val;

  bool hasReferencePoint() => _referencePoint != null;

  // "miles" field.
  String? _miles;
  String get miles => _miles ?? '';
  set miles(String? val) => _miles = val;

  bool hasMiles() => _miles != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  set number(String? val) => _number = val;

  bool hasNumber() => _number != null;

  // "is_main" field.
  bool? _isMain;
  bool get isMain => _isMain ?? false;
  set isMain(bool? val) => _isMain = val;

  bool hasIsMain() => _isMain != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        id: data['id'] as String?,
        address: data['address'] as String?,
        zipcode: data['zipcode'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        address2: data['address2'] as String?,
        latitude: data['latitude'] as String?,
        longitude: data['longitude'] as String?,
        type: data['type'] as String?,
        referencePoint: data['reference_point'] as String?,
        miles: data['miles'] as String?,
        number: data['number'] as String?,
        isMain: data['is_main'] as bool?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'address': _address,
        'zipcode': _zipcode,
        'city': _city,
        'state': _state,
        'address2': _address2,
        'latitude': _latitude,
        'longitude': _longitude,
        'type': _type,
        'reference_point': _referencePoint,
        'miles': _miles,
        'number': _number,
        'is_main': _isMain,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
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
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'reference_point': serializeParam(
          _referencePoint,
          ParamType.String,
        ),
        'miles': serializeParam(
          _miles,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.String,
        ),
        'is_main': serializeParam(
          _isMain,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
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
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        referencePoint: deserializeParam(
          data['reference_point'],
          ParamType.String,
          false,
        ),
        miles: deserializeParam(
          data['miles'],
          ParamType.String,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.String,
          false,
        ),
        isMain: deserializeParam(
          data['is_main'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        id == other.id &&
        address == other.address &&
        zipcode == other.zipcode &&
        city == other.city &&
        state == other.state &&
        address2 == other.address2 &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        type == other.type &&
        referencePoint == other.referencePoint &&
        miles == other.miles &&
        number == other.number &&
        isMain == other.isMain;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        address,
        zipcode,
        city,
        state,
        address2,
        latitude,
        longitude,
        type,
        referencePoint,
        miles,
        number,
        isMain
      ]);
}

AddressStruct createAddressStruct({
  String? id,
  String? address,
  String? zipcode,
  String? city,
  String? state,
  String? address2,
  String? latitude,
  String? longitude,
  String? type,
  String? referencePoint,
  String? miles,
  String? number,
  bool? isMain,
}) =>
    AddressStruct(
      id: id,
      address: address,
      zipcode: zipcode,
      city: city,
      state: state,
      address2: address2,
      latitude: latitude,
      longitude: longitude,
      type: type,
      referencePoint: referencePoint,
      miles: miles,
      number: number,
      isMain: isMain,
    );
