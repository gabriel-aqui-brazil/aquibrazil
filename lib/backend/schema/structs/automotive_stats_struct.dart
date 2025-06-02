// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AutomotiveStatsStruct extends BaseStruct {
  AutomotiveStatsStruct({
    String? id,
    int? createdAt,
    String? baseProductId,
    String? model,
    String? version,
    String? transmission,
    int? minimumAge,
    int? numberOfPeople,
    int? numberOfDoors,
    int? numberOfSmallSuitcases,
    int? numberOfBigSuitcases,
    bool? hasGps,
    bool? is4x4,
    int? availabilityStartDate,
    int? availabilityEndDate,
    double? hourlyFeePrice,
    int? depositFee,
    List<String>? availablePeriod,
    String? createdBy,
    String? updatedBy,
    int? updatedAt,
    bool? isDeleted,
    int? deletedAt,
  })  : _id = id,
        _createdAt = createdAt,
        _baseProductId = baseProductId,
        _model = model,
        _version = version,
        _transmission = transmission,
        _minimumAge = minimumAge,
        _numberOfPeople = numberOfPeople,
        _numberOfDoors = numberOfDoors,
        _numberOfSmallSuitcases = numberOfSmallSuitcases,
        _numberOfBigSuitcases = numberOfBigSuitcases,
        _hasGps = hasGps,
        _is4x4 = is4x4,
        _availabilityStartDate = availabilityStartDate,
        _availabilityEndDate = availabilityEndDate,
        _hourlyFeePrice = hourlyFeePrice,
        _depositFee = depositFee,
        _availablePeriod = availablePeriod,
        _createdBy = createdBy,
        _updatedBy = updatedBy,
        _updatedAt = updatedAt,
        _isDeleted = isDeleted,
        _deletedAt = deletedAt;

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

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  set model(String? val) => _model = val;

  bool hasModel() => _model != null;

  // "version" field.
  String? _version;
  String get version => _version ?? '';
  set version(String? val) => _version = val;

  bool hasVersion() => _version != null;

  // "transmission" field.
  String? _transmission;
  String get transmission => _transmission ?? '';
  set transmission(String? val) => _transmission = val;

  bool hasTransmission() => _transmission != null;

  // "minimum_age" field.
  int? _minimumAge;
  int get minimumAge => _minimumAge ?? 0;
  set minimumAge(int? val) => _minimumAge = val;

  void incrementMinimumAge(int amount) => minimumAge = minimumAge + amount;

  bool hasMinimumAge() => _minimumAge != null;

  // "number_of_people" field.
  int? _numberOfPeople;
  int get numberOfPeople => _numberOfPeople ?? 0;
  set numberOfPeople(int? val) => _numberOfPeople = val;

  void incrementNumberOfPeople(int amount) =>
      numberOfPeople = numberOfPeople + amount;

  bool hasNumberOfPeople() => _numberOfPeople != null;

  // "number_of_doors" field.
  int? _numberOfDoors;
  int get numberOfDoors => _numberOfDoors ?? 0;
  set numberOfDoors(int? val) => _numberOfDoors = val;

  void incrementNumberOfDoors(int amount) =>
      numberOfDoors = numberOfDoors + amount;

  bool hasNumberOfDoors() => _numberOfDoors != null;

  // "number_of_small_suitcases" field.
  int? _numberOfSmallSuitcases;
  int get numberOfSmallSuitcases => _numberOfSmallSuitcases ?? 0;
  set numberOfSmallSuitcases(int? val) => _numberOfSmallSuitcases = val;

  void incrementNumberOfSmallSuitcases(int amount) =>
      numberOfSmallSuitcases = numberOfSmallSuitcases + amount;

  bool hasNumberOfSmallSuitcases() => _numberOfSmallSuitcases != null;

  // "number_of_big_suitcases" field.
  int? _numberOfBigSuitcases;
  int get numberOfBigSuitcases => _numberOfBigSuitcases ?? 0;
  set numberOfBigSuitcases(int? val) => _numberOfBigSuitcases = val;

  void incrementNumberOfBigSuitcases(int amount) =>
      numberOfBigSuitcases = numberOfBigSuitcases + amount;

  bool hasNumberOfBigSuitcases() => _numberOfBigSuitcases != null;

  // "has_gps" field.
  bool? _hasGps;
  bool get hasGps => _hasGps ?? false;
  set hasGps(bool? val) => _hasGps = val;

  bool hasHasGps() => _hasGps != null;

  // "is_4x4" field.
  bool? _is4x4;
  bool get is4x4 => _is4x4 ?? false;
  set is4x4(bool? val) => _is4x4 = val;

  bool hasIs4x4() => _is4x4 != null;

  // "availability_start_date" field.
  int? _availabilityStartDate;
  int get availabilityStartDate => _availabilityStartDate ?? 0;
  set availabilityStartDate(int? val) => _availabilityStartDate = val;

  void incrementAvailabilityStartDate(int amount) =>
      availabilityStartDate = availabilityStartDate + amount;

  bool hasAvailabilityStartDate() => _availabilityStartDate != null;

  // "availability_end_date" field.
  int? _availabilityEndDate;
  int get availabilityEndDate => _availabilityEndDate ?? 0;
  set availabilityEndDate(int? val) => _availabilityEndDate = val;

  void incrementAvailabilityEndDate(int amount) =>
      availabilityEndDate = availabilityEndDate + amount;

  bool hasAvailabilityEndDate() => _availabilityEndDate != null;

  // "hourly_fee_price" field.
  double? _hourlyFeePrice;
  double get hourlyFeePrice => _hourlyFeePrice ?? 0.0;
  set hourlyFeePrice(double? val) => _hourlyFeePrice = val;

  void incrementHourlyFeePrice(double amount) =>
      hourlyFeePrice = hourlyFeePrice + amount;

  bool hasHourlyFeePrice() => _hourlyFeePrice != null;

  // "deposit_fee" field.
  int? _depositFee;
  int get depositFee => _depositFee ?? 0;
  set depositFee(int? val) => _depositFee = val;

  void incrementDepositFee(int amount) => depositFee = depositFee + amount;

  bool hasDepositFee() => _depositFee != null;

  // "available_period" field.
  List<String>? _availablePeriod;
  List<String> get availablePeriod => _availablePeriod ?? const [];
  set availablePeriod(List<String>? val) => _availablePeriod = val;

  void updateAvailablePeriod(Function(List<String>) updateFn) {
    updateFn(_availablePeriod ??= []);
  }

  bool hasAvailablePeriod() => _availablePeriod != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  set createdBy(String? val) => _createdBy = val;

  bool hasCreatedBy() => _createdBy != null;

  // "updated_by" field.
  String? _updatedBy;
  String get updatedBy => _updatedBy ?? '';
  set updatedBy(String? val) => _updatedBy = val;

  bool hasUpdatedBy() => _updatedBy != null;

  // "updated_at" field.
  int? _updatedAt;
  int get updatedAt => _updatedAt ?? 0;
  set updatedAt(int? val) => _updatedAt = val;

  void incrementUpdatedAt(int amount) => updatedAt = updatedAt + amount;

  bool hasUpdatedAt() => _updatedAt != null;

  // "is_deleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  set isDeleted(bool? val) => _isDeleted = val;

  bool hasIsDeleted() => _isDeleted != null;

  // "deleted_at" field.
  int? _deletedAt;
  int get deletedAt => _deletedAt ?? 0;
  set deletedAt(int? val) => _deletedAt = val;

  void incrementDeletedAt(int amount) => deletedAt = deletedAt + amount;

  bool hasDeletedAt() => _deletedAt != null;

  static AutomotiveStatsStruct fromMap(Map<String, dynamic> data) =>
      AutomotiveStatsStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        baseProductId: data['base_product_id'] as String?,
        model: data['model'] as String?,
        version: data['version'] as String?,
        transmission: data['transmission'] as String?,
        minimumAge: castToType<int>(data['minimum_age']),
        numberOfPeople: castToType<int>(data['number_of_people']),
        numberOfDoors: castToType<int>(data['number_of_doors']),
        numberOfSmallSuitcases:
            castToType<int>(data['number_of_small_suitcases']),
        numberOfBigSuitcases: castToType<int>(data['number_of_big_suitcases']),
        hasGps: data['has_gps'] as bool?,
        is4x4: data['is_4x4'] as bool?,
        availabilityStartDate: castToType<int>(data['availability_start_date']),
        availabilityEndDate: castToType<int>(data['availability_end_date']),
        hourlyFeePrice: castToType<double>(data['hourly_fee_price']),
        depositFee: castToType<int>(data['deposit_fee']),
        availablePeriod: getDataList(data['available_period']),
        createdBy: data['created_by'] as String?,
        updatedBy: data['updated_by'] as String?,
        updatedAt: castToType<int>(data['updated_at']),
        isDeleted: data['is_deleted'] as bool?,
        deletedAt: castToType<int>(data['deleted_at']),
      );

  static AutomotiveStatsStruct? maybeFromMap(dynamic data) => data is Map
      ? AutomotiveStatsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'base_product_id': _baseProductId,
        'model': _model,
        'version': _version,
        'transmission': _transmission,
        'minimum_age': _minimumAge,
        'number_of_people': _numberOfPeople,
        'number_of_doors': _numberOfDoors,
        'number_of_small_suitcases': _numberOfSmallSuitcases,
        'number_of_big_suitcases': _numberOfBigSuitcases,
        'has_gps': _hasGps,
        'is_4x4': _is4x4,
        'availability_start_date': _availabilityStartDate,
        'availability_end_date': _availabilityEndDate,
        'hourly_fee_price': _hourlyFeePrice,
        'deposit_fee': _depositFee,
        'available_period': _availablePeriod,
        'created_by': _createdBy,
        'updated_by': _updatedBy,
        'updated_at': _updatedAt,
        'is_deleted': _isDeleted,
        'deleted_at': _deletedAt,
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
        'model': serializeParam(
          _model,
          ParamType.String,
        ),
        'version': serializeParam(
          _version,
          ParamType.String,
        ),
        'transmission': serializeParam(
          _transmission,
          ParamType.String,
        ),
        'minimum_age': serializeParam(
          _minimumAge,
          ParamType.int,
        ),
        'number_of_people': serializeParam(
          _numberOfPeople,
          ParamType.int,
        ),
        'number_of_doors': serializeParam(
          _numberOfDoors,
          ParamType.int,
        ),
        'number_of_small_suitcases': serializeParam(
          _numberOfSmallSuitcases,
          ParamType.int,
        ),
        'number_of_big_suitcases': serializeParam(
          _numberOfBigSuitcases,
          ParamType.int,
        ),
        'has_gps': serializeParam(
          _hasGps,
          ParamType.bool,
        ),
        'is_4x4': serializeParam(
          _is4x4,
          ParamType.bool,
        ),
        'availability_start_date': serializeParam(
          _availabilityStartDate,
          ParamType.int,
        ),
        'availability_end_date': serializeParam(
          _availabilityEndDate,
          ParamType.int,
        ),
        'hourly_fee_price': serializeParam(
          _hourlyFeePrice,
          ParamType.double,
        ),
        'deposit_fee': serializeParam(
          _depositFee,
          ParamType.int,
        ),
        'available_period': serializeParam(
          _availablePeriod,
          ParamType.String,
          isList: true,
        ),
        'created_by': serializeParam(
          _createdBy,
          ParamType.String,
        ),
        'updated_by': serializeParam(
          _updatedBy,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.int,
        ),
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
        'deleted_at': serializeParam(
          _deletedAt,
          ParamType.int,
        ),
      }.withoutNulls;

  static AutomotiveStatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AutomotiveStatsStruct(
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
        model: deserializeParam(
          data['model'],
          ParamType.String,
          false,
        ),
        version: deserializeParam(
          data['version'],
          ParamType.String,
          false,
        ),
        transmission: deserializeParam(
          data['transmission'],
          ParamType.String,
          false,
        ),
        minimumAge: deserializeParam(
          data['minimum_age'],
          ParamType.int,
          false,
        ),
        numberOfPeople: deserializeParam(
          data['number_of_people'],
          ParamType.int,
          false,
        ),
        numberOfDoors: deserializeParam(
          data['number_of_doors'],
          ParamType.int,
          false,
        ),
        numberOfSmallSuitcases: deserializeParam(
          data['number_of_small_suitcases'],
          ParamType.int,
          false,
        ),
        numberOfBigSuitcases: deserializeParam(
          data['number_of_big_suitcases'],
          ParamType.int,
          false,
        ),
        hasGps: deserializeParam(
          data['has_gps'],
          ParamType.bool,
          false,
        ),
        is4x4: deserializeParam(
          data['is_4x4'],
          ParamType.bool,
          false,
        ),
        availabilityStartDate: deserializeParam(
          data['availability_start_date'],
          ParamType.int,
          false,
        ),
        availabilityEndDate: deserializeParam(
          data['availability_end_date'],
          ParamType.int,
          false,
        ),
        hourlyFeePrice: deserializeParam(
          data['hourly_fee_price'],
          ParamType.double,
          false,
        ),
        depositFee: deserializeParam(
          data['deposit_fee'],
          ParamType.int,
          false,
        ),
        availablePeriod: deserializeParam<String>(
          data['available_period'],
          ParamType.String,
          true,
        ),
        createdBy: deserializeParam(
          data['created_by'],
          ParamType.String,
          false,
        ),
        updatedBy: deserializeParam(
          data['updated_by'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.int,
          false,
        ),
        isDeleted: deserializeParam(
          data['is_deleted'],
          ParamType.bool,
          false,
        ),
        deletedAt: deserializeParam(
          data['deleted_at'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AutomotiveStatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AutomotiveStatsStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        baseProductId == other.baseProductId &&
        model == other.model &&
        version == other.version &&
        transmission == other.transmission &&
        minimumAge == other.minimumAge &&
        numberOfPeople == other.numberOfPeople &&
        numberOfDoors == other.numberOfDoors &&
        numberOfSmallSuitcases == other.numberOfSmallSuitcases &&
        numberOfBigSuitcases == other.numberOfBigSuitcases &&
        hasGps == other.hasGps &&
        is4x4 == other.is4x4 &&
        availabilityStartDate == other.availabilityStartDate &&
        availabilityEndDate == other.availabilityEndDate &&
        hourlyFeePrice == other.hourlyFeePrice &&
        depositFee == other.depositFee &&
        listEquality.equals(availablePeriod, other.availablePeriod) &&
        createdBy == other.createdBy &&
        updatedBy == other.updatedBy &&
        updatedAt == other.updatedAt &&
        isDeleted == other.isDeleted &&
        deletedAt == other.deletedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        baseProductId,
        model,
        version,
        transmission,
        minimumAge,
        numberOfPeople,
        numberOfDoors,
        numberOfSmallSuitcases,
        numberOfBigSuitcases,
        hasGps,
        is4x4,
        availabilityStartDate,
        availabilityEndDate,
        hourlyFeePrice,
        depositFee,
        availablePeriod,
        createdBy,
        updatedBy,
        updatedAt,
        isDeleted,
        deletedAt
      ]);
}

AutomotiveStatsStruct createAutomotiveStatsStruct({
  String? id,
  int? createdAt,
  String? baseProductId,
  String? model,
  String? version,
  String? transmission,
  int? minimumAge,
  int? numberOfPeople,
  int? numberOfDoors,
  int? numberOfSmallSuitcases,
  int? numberOfBigSuitcases,
  bool? hasGps,
  bool? is4x4,
  int? availabilityStartDate,
  int? availabilityEndDate,
  double? hourlyFeePrice,
  int? depositFee,
  String? createdBy,
  String? updatedBy,
  int? updatedAt,
  bool? isDeleted,
  int? deletedAt,
}) =>
    AutomotiveStatsStruct(
      id: id,
      createdAt: createdAt,
      baseProductId: baseProductId,
      model: model,
      version: version,
      transmission: transmission,
      minimumAge: minimumAge,
      numberOfPeople: numberOfPeople,
      numberOfDoors: numberOfDoors,
      numberOfSmallSuitcases: numberOfSmallSuitcases,
      numberOfBigSuitcases: numberOfBigSuitcases,
      hasGps: hasGps,
      is4x4: is4x4,
      availabilityStartDate: availabilityStartDate,
      availabilityEndDate: availabilityEndDate,
      hourlyFeePrice: hourlyFeePrice,
      depositFee: depositFee,
      createdBy: createdBy,
      updatedBy: updatedBy,
      updatedAt: updatedAt,
      isDeleted: isDeleted,
      deletedAt: deletedAt,
    );
