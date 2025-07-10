// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderProductDetailStruct extends BaseStruct {
  OrderProductDetailStruct({
    double? deliveryFee,
    bool? isPickup,
    double? tip,
    String? dropoffCode,
    AddressStruct? address,
    int? dropoffTimeEstimatedStart,
    int? dropoffTimeEstimatedEnd,
    String? trackingNumber,
  })  : _deliveryFee = deliveryFee,
        _isPickup = isPickup,
        _tip = tip,
        _dropoffCode = dropoffCode,
        _address = address,
        _dropoffTimeEstimatedStart = dropoffTimeEstimatedStart,
        _dropoffTimeEstimatedEnd = dropoffTimeEstimatedEnd,
        _trackingNumber = trackingNumber;

  // "delivery_fee" field.
  double? _deliveryFee;
  double get deliveryFee => _deliveryFee ?? 0.0;
  set deliveryFee(double? val) => _deliveryFee = val;

  void incrementDeliveryFee(double amount) =>
      deliveryFee = deliveryFee + amount;

  bool hasDeliveryFee() => _deliveryFee != null;

  // "is_pickup" field.
  bool? _isPickup;
  bool get isPickup => _isPickup ?? false;
  set isPickup(bool? val) => _isPickup = val;

  bool hasIsPickup() => _isPickup != null;

  // "tip" field.
  double? _tip;
  double get tip => _tip ?? 0.0;
  set tip(double? val) => _tip = val;

  void incrementTip(double amount) => tip = tip + amount;

  bool hasTip() => _tip != null;

  // "dropoff_code" field.
  String? _dropoffCode;
  String get dropoffCode => _dropoffCode ?? '';
  set dropoffCode(String? val) => _dropoffCode = val;

  bool hasDropoffCode() => _dropoffCode != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  set address(AddressStruct? val) => _address = val;

  void updateAddress(Function(AddressStruct) updateFn) {
    updateFn(_address ??= AddressStruct());
  }

  bool hasAddress() => _address != null;

  // "dropoff_time_estimated_start" field.
  int? _dropoffTimeEstimatedStart;
  int get dropoffTimeEstimatedStart => _dropoffTimeEstimatedStart ?? 0;
  set dropoffTimeEstimatedStart(int? val) => _dropoffTimeEstimatedStart = val;

  void incrementDropoffTimeEstimatedStart(int amount) =>
      dropoffTimeEstimatedStart = dropoffTimeEstimatedStart + amount;

  bool hasDropoffTimeEstimatedStart() => _dropoffTimeEstimatedStart != null;

  // "dropoff_time_estimated_end" field.
  int? _dropoffTimeEstimatedEnd;
  int get dropoffTimeEstimatedEnd => _dropoffTimeEstimatedEnd ?? 0;
  set dropoffTimeEstimatedEnd(int? val) => _dropoffTimeEstimatedEnd = val;

  void incrementDropoffTimeEstimatedEnd(int amount) =>
      dropoffTimeEstimatedEnd = dropoffTimeEstimatedEnd + amount;

  bool hasDropoffTimeEstimatedEnd() => _dropoffTimeEstimatedEnd != null;

  // "tracking_number" field.
  String? _trackingNumber;
  String get trackingNumber => _trackingNumber ?? '';
  set trackingNumber(String? val) => _trackingNumber = val;

  bool hasTrackingNumber() => _trackingNumber != null;

  static OrderProductDetailStruct fromMap(Map<String, dynamic> data) =>
      OrderProductDetailStruct(
        deliveryFee: castToType<double>(data['delivery_fee']),
        isPickup: data['is_pickup'] as bool?,
        tip: castToType<double>(data['tip']),
        dropoffCode: data['dropoff_code'] as String?,
        address: data['address'] is AddressStruct
            ? data['address']
            : AddressStruct.maybeFromMap(data['address']),
        dropoffTimeEstimatedStart:
            castToType<int>(data['dropoff_time_estimated_start']),
        dropoffTimeEstimatedEnd:
            castToType<int>(data['dropoff_time_estimated_end']),
        trackingNumber: data['tracking_number'] as String?,
      );

  static OrderProductDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderProductDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'delivery_fee': _deliveryFee,
        'is_pickup': _isPickup,
        'tip': _tip,
        'dropoff_code': _dropoffCode,
        'address': _address?.toMap(),
        'dropoff_time_estimated_start': _dropoffTimeEstimatedStart,
        'dropoff_time_estimated_end': _dropoffTimeEstimatedEnd,
        'tracking_number': _trackingNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'delivery_fee': serializeParam(
          _deliveryFee,
          ParamType.double,
        ),
        'is_pickup': serializeParam(
          _isPickup,
          ParamType.bool,
        ),
        'tip': serializeParam(
          _tip,
          ParamType.double,
        ),
        'dropoff_code': serializeParam(
          _dropoffCode,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.DataStruct,
        ),
        'dropoff_time_estimated_start': serializeParam(
          _dropoffTimeEstimatedStart,
          ParamType.int,
        ),
        'dropoff_time_estimated_end': serializeParam(
          _dropoffTimeEstimatedEnd,
          ParamType.int,
        ),
        'tracking_number': serializeParam(
          _trackingNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrderProductDetailStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OrderProductDetailStruct(
        deliveryFee: deserializeParam(
          data['delivery_fee'],
          ParamType.double,
          false,
        ),
        isPickup: deserializeParam(
          data['is_pickup'],
          ParamType.bool,
          false,
        ),
        tip: deserializeParam(
          data['tip'],
          ParamType.double,
          false,
        ),
        dropoffCode: deserializeParam(
          data['dropoff_code'],
          ParamType.String,
          false,
        ),
        address: deserializeStructParam(
          data['address'],
          ParamType.DataStruct,
          false,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
        dropoffTimeEstimatedStart: deserializeParam(
          data['dropoff_time_estimated_start'],
          ParamType.int,
          false,
        ),
        dropoffTimeEstimatedEnd: deserializeParam(
          data['dropoff_time_estimated_end'],
          ParamType.int,
          false,
        ),
        trackingNumber: deserializeParam(
          data['tracking_number'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrderProductDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderProductDetailStruct &&
        deliveryFee == other.deliveryFee &&
        isPickup == other.isPickup &&
        tip == other.tip &&
        dropoffCode == other.dropoffCode &&
        address == other.address &&
        dropoffTimeEstimatedStart == other.dropoffTimeEstimatedStart &&
        dropoffTimeEstimatedEnd == other.dropoffTimeEstimatedEnd &&
        trackingNumber == other.trackingNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        deliveryFee,
        isPickup,
        tip,
        dropoffCode,
        address,
        dropoffTimeEstimatedStart,
        dropoffTimeEstimatedEnd,
        trackingNumber
      ]);
}

OrderProductDetailStruct createOrderProductDetailStruct({
  double? deliveryFee,
  bool? isPickup,
  double? tip,
  String? dropoffCode,
  AddressStruct? address,
  int? dropoffTimeEstimatedStart,
  int? dropoffTimeEstimatedEnd,
  String? trackingNumber,
}) =>
    OrderProductDetailStruct(
      deliveryFee: deliveryFee,
      isPickup: isPickup,
      tip: tip,
      dropoffCode: dropoffCode,
      address: address ?? AddressStruct(),
      dropoffTimeEstimatedStart: dropoffTimeEstimatedStart,
      dropoffTimeEstimatedEnd: dropoffTimeEstimatedEnd,
      trackingNumber: trackingNumber,
    );
