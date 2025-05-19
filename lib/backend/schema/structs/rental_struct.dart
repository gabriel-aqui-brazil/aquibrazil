// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RentalStruct extends BaseStruct {
  RentalStruct({
    String? id,
    int? availabilityStartDate,
    int? availabilityEndDate,
    List<String>? availablePeriod,
    double? hourlyFeePrice,
    double? depositFee,
  })  : _id = id,
        _availabilityStartDate = availabilityStartDate,
        _availabilityEndDate = availabilityEndDate,
        _availablePeriod = availablePeriod,
        _hourlyFeePrice = hourlyFeePrice,
        _depositFee = depositFee;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "available_period" field.
  List<String>? _availablePeriod;
  List<String> get availablePeriod => _availablePeriod ?? const [];
  set availablePeriod(List<String>? val) => _availablePeriod = val;

  void updateAvailablePeriod(Function(List<String>) updateFn) {
    updateFn(_availablePeriod ??= []);
  }

  bool hasAvailablePeriod() => _availablePeriod != null;

  // "hourly_fee_price" field.
  double? _hourlyFeePrice;
  double get hourlyFeePrice => _hourlyFeePrice ?? 0.0;
  set hourlyFeePrice(double? val) => _hourlyFeePrice = val;

  void incrementHourlyFeePrice(double amount) =>
      hourlyFeePrice = hourlyFeePrice + amount;

  bool hasHourlyFeePrice() => _hourlyFeePrice != null;

  // "deposit_fee" field.
  double? _depositFee;
  double get depositFee => _depositFee ?? 0.0;
  set depositFee(double? val) => _depositFee = val;

  void incrementDepositFee(double amount) => depositFee = depositFee + amount;

  bool hasDepositFee() => _depositFee != null;

  static RentalStruct fromMap(Map<String, dynamic> data) => RentalStruct(
        id: data['id'] as String?,
        availabilityStartDate: castToType<int>(data['availability_start_date']),
        availabilityEndDate: castToType<int>(data['availability_end_date']),
        availablePeriod: getDataList(data['available_period']),
        hourlyFeePrice: castToType<double>(data['hourly_fee_price']),
        depositFee: castToType<double>(data['deposit_fee']),
      );

  static RentalStruct? maybeFromMap(dynamic data) =>
      data is Map ? RentalStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'availability_start_date': _availabilityStartDate,
        'availability_end_date': _availabilityEndDate,
        'available_period': _availablePeriod,
        'hourly_fee_price': _hourlyFeePrice,
        'deposit_fee': _depositFee,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'availability_start_date': serializeParam(
          _availabilityStartDate,
          ParamType.int,
        ),
        'availability_end_date': serializeParam(
          _availabilityEndDate,
          ParamType.int,
        ),
        'available_period': serializeParam(
          _availablePeriod,
          ParamType.String,
          isList: true,
        ),
        'hourly_fee_price': serializeParam(
          _hourlyFeePrice,
          ParamType.double,
        ),
        'deposit_fee': serializeParam(
          _depositFee,
          ParamType.double,
        ),
      }.withoutNulls;

  static RentalStruct fromSerializableMap(Map<String, dynamic> data) =>
      RentalStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
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
        availablePeriod: deserializeParam<String>(
          data['available_period'],
          ParamType.String,
          true,
        ),
        hourlyFeePrice: deserializeParam(
          data['hourly_fee_price'],
          ParamType.double,
          false,
        ),
        depositFee: deserializeParam(
          data['deposit_fee'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'RentalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RentalStruct &&
        id == other.id &&
        availabilityStartDate == other.availabilityStartDate &&
        availabilityEndDate == other.availabilityEndDate &&
        listEquality.equals(availablePeriod, other.availablePeriod) &&
        hourlyFeePrice == other.hourlyFeePrice &&
        depositFee == other.depositFee;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        availabilityStartDate,
        availabilityEndDate,
        availablePeriod,
        hourlyFeePrice,
        depositFee
      ]);
}

RentalStruct createRentalStruct({
  String? id,
  int? availabilityStartDate,
  int? availabilityEndDate,
  double? hourlyFeePrice,
  double? depositFee,
}) =>
    RentalStruct(
      id: id,
      availabilityStartDate: availabilityStartDate,
      availabilityEndDate: availabilityEndDate,
      hourlyFeePrice: hourlyFeePrice,
      depositFee: depositFee,
    );
