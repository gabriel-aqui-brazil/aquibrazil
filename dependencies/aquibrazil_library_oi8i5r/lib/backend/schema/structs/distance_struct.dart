// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DistanceStruct extends BaseStruct {
  DistanceStruct({
    double? distance,
    double? price,
  })  : _distance = distance,
        _price = price;

  // "distance" field.
  double? _distance;
  double get distance => _distance ?? 0.0;
  set distance(double? val) => _distance = val;

  void incrementDistance(double amount) => distance = distance + amount;

  bool hasDistance() => _distance != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static DistanceStruct fromMap(Map<String, dynamic> data) => DistanceStruct(
        distance: castToType<double>(data['distance']),
        price: castToType<double>(data['price']),
      );

  static DistanceStruct? maybeFromMap(dynamic data) =>
      data is Map ? DistanceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'distance': _distance,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'distance': serializeParam(
          _distance,
          ParamType.double,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static DistanceStruct fromSerializableMap(Map<String, dynamic> data) =>
      DistanceStruct(
        distance: deserializeParam(
          data['distance'],
          ParamType.double,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DistanceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DistanceStruct &&
        distance == other.distance &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([distance, price]);
}

DistanceStruct createDistanceStruct({
  double? distance,
  double? price,
}) =>
    DistanceStruct(
      distance: distance,
      price: price,
    );
