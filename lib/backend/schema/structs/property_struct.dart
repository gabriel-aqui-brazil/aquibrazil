// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertyStruct extends BaseStruct {
  PropertyStruct({
    String? id,
    int? createdAt,
    String? baseProductId,
    String? fullAddress,
    int? bedrooms,
    int? livingRooms,
    int? floors,
    int? suites,
    int? bathrooms,
    List<String>? attributes,
    String? areaType,
    String? crimeHistory,
    int? availabilityStartDate,
    String? availability,
    String? yearBuilt,
  })  : _id = id,
        _createdAt = createdAt,
        _baseProductId = baseProductId,
        _fullAddress = fullAddress,
        _bedrooms = bedrooms,
        _livingRooms = livingRooms,
        _floors = floors,
        _suites = suites,
        _bathrooms = bathrooms,
        _attributes = attributes,
        _areaType = areaType,
        _crimeHistory = crimeHistory,
        _availabilityStartDate = availabilityStartDate,
        _availability = availability,
        _yearBuilt = yearBuilt;

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

  // "base_product_id" field.
  String? _baseProductId;
  String get baseProductId => _baseProductId ?? '';
  set baseProductId(String? val) => _baseProductId = val;

  bool hasBaseProductId() => _baseProductId != null;

  // "full_address" field.
  String? _fullAddress;
  String get fullAddress => _fullAddress ?? '';
  set fullAddress(String? val) => _fullAddress = val;

  bool hasFullAddress() => _fullAddress != null;

  // "bedrooms" field.
  int? _bedrooms;
  int get bedrooms => _bedrooms ?? 0;
  set bedrooms(int? val) => _bedrooms = val;

  void incrementBedrooms(int amount) => bedrooms = bedrooms + amount;

  bool hasBedrooms() => _bedrooms != null;

  // "living_rooms" field.
  int? _livingRooms;
  int get livingRooms => _livingRooms ?? 0;
  set livingRooms(int? val) => _livingRooms = val;

  void incrementLivingRooms(int amount) => livingRooms = livingRooms + amount;

  bool hasLivingRooms() => _livingRooms != null;

  // "floors" field.
  int? _floors;
  int get floors => _floors ?? 0;
  set floors(int? val) => _floors = val;

  void incrementFloors(int amount) => floors = floors + amount;

  bool hasFloors() => _floors != null;

  // "suites" field.
  int? _suites;
  int get suites => _suites ?? 0;
  set suites(int? val) => _suites = val;

  void incrementSuites(int amount) => suites = suites + amount;

  bool hasSuites() => _suites != null;

  // "bathrooms" field.
  int? _bathrooms;
  int get bathrooms => _bathrooms ?? 0;
  set bathrooms(int? val) => _bathrooms = val;

  void incrementBathrooms(int amount) => bathrooms = bathrooms + amount;

  bool hasBathrooms() => _bathrooms != null;

  // "attributes" field.
  List<String>? _attributes;
  List<String> get attributes => _attributes ?? const [];
  set attributes(List<String>? val) => _attributes = val;

  void updateAttributes(Function(List<String>) updateFn) {
    updateFn(_attributes ??= []);
  }

  bool hasAttributes() => _attributes != null;

  // "area_type" field.
  String? _areaType;
  String get areaType => _areaType ?? '';
  set areaType(String? val) => _areaType = val;

  bool hasAreaType() => _areaType != null;

  // "crime_history" field.
  String? _crimeHistory;
  String get crimeHistory => _crimeHistory ?? '';
  set crimeHistory(String? val) => _crimeHistory = val;

  bool hasCrimeHistory() => _crimeHistory != null;

  // "availability_start_date" field.
  int? _availabilityStartDate;
  int get availabilityStartDate => _availabilityStartDate ?? 0;
  set availabilityStartDate(int? val) => _availabilityStartDate = val;

  void incrementAvailabilityStartDate(int amount) =>
      availabilityStartDate = availabilityStartDate + amount;

  bool hasAvailabilityStartDate() => _availabilityStartDate != null;

  // "availability" field.
  String? _availability;
  String get availability => _availability ?? '';
  set availability(String? val) => _availability = val;

  bool hasAvailability() => _availability != null;

  // "year_built" field.
  String? _yearBuilt;
  String get yearBuilt => _yearBuilt ?? '';
  set yearBuilt(String? val) => _yearBuilt = val;

  bool hasYearBuilt() => _yearBuilt != null;

  static PropertyStruct fromMap(Map<String, dynamic> data) => PropertyStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        baseProductId: data['base_product_id'] as String?,
        fullAddress: data['full_address'] as String?,
        bedrooms: castToType<int>(data['bedrooms']),
        livingRooms: castToType<int>(data['living_rooms']),
        floors: castToType<int>(data['floors']),
        suites: castToType<int>(data['suites']),
        bathrooms: castToType<int>(data['bathrooms']),
        attributes: getDataList(data['attributes']),
        areaType: data['area_type'] as String?,
        crimeHistory: data['crime_history'] as String?,
        availabilityStartDate: castToType<int>(data['availability_start_date']),
        availability: data['availability'] as String?,
        yearBuilt: data['year_built'] as String?,
      );

  static PropertyStruct? maybeFromMap(dynamic data) =>
      data is Map ? PropertyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'base_product_id': _baseProductId,
        'full_address': _fullAddress,
        'bedrooms': _bedrooms,
        'living_rooms': _livingRooms,
        'floors': _floors,
        'suites': _suites,
        'bathrooms': _bathrooms,
        'attributes': _attributes,
        'area_type': _areaType,
        'crime_history': _crimeHistory,
        'availability_start_date': _availabilityStartDate,
        'availability': _availability,
        'year_built': _yearBuilt,
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
        'base_product_id': serializeParam(
          _baseProductId,
          ParamType.String,
        ),
        'full_address': serializeParam(
          _fullAddress,
          ParamType.String,
        ),
        'bedrooms': serializeParam(
          _bedrooms,
          ParamType.int,
        ),
        'living_rooms': serializeParam(
          _livingRooms,
          ParamType.int,
        ),
        'floors': serializeParam(
          _floors,
          ParamType.int,
        ),
        'suites': serializeParam(
          _suites,
          ParamType.int,
        ),
        'bathrooms': serializeParam(
          _bathrooms,
          ParamType.int,
        ),
        'attributes': serializeParam(
          _attributes,
          ParamType.String,
          isList: true,
        ),
        'area_type': serializeParam(
          _areaType,
          ParamType.String,
        ),
        'crime_history': serializeParam(
          _crimeHistory,
          ParamType.String,
        ),
        'availability_start_date': serializeParam(
          _availabilityStartDate,
          ParamType.int,
        ),
        'availability': serializeParam(
          _availability,
          ParamType.String,
        ),
        'year_built': serializeParam(
          _yearBuilt,
          ParamType.String,
        ),
      }.withoutNulls;

  static PropertyStruct fromSerializableMap(Map<String, dynamic> data) =>
      PropertyStruct(
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
        baseProductId: deserializeParam(
          data['base_product_id'],
          ParamType.String,
          false,
        ),
        fullAddress: deserializeParam(
          data['full_address'],
          ParamType.String,
          false,
        ),
        bedrooms: deserializeParam(
          data['bedrooms'],
          ParamType.int,
          false,
        ),
        livingRooms: deserializeParam(
          data['living_rooms'],
          ParamType.int,
          false,
        ),
        floors: deserializeParam(
          data['floors'],
          ParamType.int,
          false,
        ),
        suites: deserializeParam(
          data['suites'],
          ParamType.int,
          false,
        ),
        bathrooms: deserializeParam(
          data['bathrooms'],
          ParamType.int,
          false,
        ),
        attributes: deserializeParam<String>(
          data['attributes'],
          ParamType.String,
          true,
        ),
        areaType: deserializeParam(
          data['area_type'],
          ParamType.String,
          false,
        ),
        crimeHistory: deserializeParam(
          data['crime_history'],
          ParamType.String,
          false,
        ),
        availabilityStartDate: deserializeParam(
          data['availability_start_date'],
          ParamType.int,
          false,
        ),
        availability: deserializeParam(
          data['availability'],
          ParamType.String,
          false,
        ),
        yearBuilt: deserializeParam(
          data['year_built'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PropertyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PropertyStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        baseProductId == other.baseProductId &&
        fullAddress == other.fullAddress &&
        bedrooms == other.bedrooms &&
        livingRooms == other.livingRooms &&
        floors == other.floors &&
        suites == other.suites &&
        bathrooms == other.bathrooms &&
        listEquality.equals(attributes, other.attributes) &&
        areaType == other.areaType &&
        crimeHistory == other.crimeHistory &&
        availabilityStartDate == other.availabilityStartDate &&
        availability == other.availability &&
        yearBuilt == other.yearBuilt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        baseProductId,
        fullAddress,
        bedrooms,
        livingRooms,
        floors,
        suites,
        bathrooms,
        attributes,
        areaType,
        crimeHistory,
        availabilityStartDate,
        availability,
        yearBuilt
      ]);
}

PropertyStruct createPropertyStruct({
  String? id,
  int? createdAt,
  String? baseProductId,
  String? fullAddress,
  int? bedrooms,
  int? livingRooms,
  int? floors,
  int? suites,
  int? bathrooms,
  String? areaType,
  String? crimeHistory,
  int? availabilityStartDate,
  String? availability,
  String? yearBuilt,
}) =>
    PropertyStruct(
      id: id,
      createdAt: createdAt,
      baseProductId: baseProductId,
      fullAddress: fullAddress,
      bedrooms: bedrooms,
      livingRooms: livingRooms,
      floors: floors,
      suites: suites,
      bathrooms: bathrooms,
      areaType: areaType,
      crimeHistory: crimeHistory,
      availabilityStartDate: availabilityStartDate,
      availability: availability,
      yearBuilt: yearBuilt,
    );
