// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import "package:aquibrazil_library_oi8i5r/flutter_flow/nav/serialization_util.dart"
    as aquibrazil_library_oi8i5r_serialization_util;

class FilterHomeStruct extends BaseStruct {
  FilterHomeStruct({
    double? discount,
    bool? isPickup,
    bool? isFreeDelivery,
    double? rating,
    int? price,
    double? distance,
    aquibrazil_library_oi8i5r_data_schema.CategoryStruct? category,
  })  : _discount = discount,
        _isPickup = isPickup,
        _isFreeDelivery = isFreeDelivery,
        _rating = rating,
        _price = price,
        _distance = distance,
        _category = category;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  set discount(double? val) => _discount = val;

  void incrementDiscount(double amount) => discount = discount + amount;

  bool hasDiscount() => _discount != null;

  // "is_pickup" field.
  bool? _isPickup;
  bool get isPickup => _isPickup ?? false;
  set isPickup(bool? val) => _isPickup = val;

  bool hasIsPickup() => _isPickup != null;

  // "is_free_delivery" field.
  bool? _isFreeDelivery;
  bool get isFreeDelivery => _isFreeDelivery ?? false;
  set isFreeDelivery(bool? val) => _isFreeDelivery = val;

  bool hasIsFreeDelivery() => _isFreeDelivery != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "distance" field.
  double? _distance;
  double get distance => _distance ?? 0.0;
  set distance(double? val) => _distance = val;

  void incrementDistance(double amount) => distance = distance + amount;

  bool hasDistance() => _distance != null;

  // "category" field.
  aquibrazil_library_oi8i5r_data_schema.CategoryStruct? _category;
  aquibrazil_library_oi8i5r_data_schema.CategoryStruct get category =>
      _category ?? aquibrazil_library_oi8i5r_data_schema.CategoryStruct();
  set category(aquibrazil_library_oi8i5r_data_schema.CategoryStruct? val) =>
      _category = val;

  void updateCategory(
      Function(aquibrazil_library_oi8i5r_data_schema.CategoryStruct) updateFn) {
    updateFn(
        _category ??= aquibrazil_library_oi8i5r_data_schema.CategoryStruct());
  }

  bool hasCategory() => _category != null;

  static FilterHomeStruct fromMap(Map<String, dynamic> data) =>
      FilterHomeStruct(
        discount: castToType<double>(data['discount']),
        isPickup: data['is_pickup'] as bool?,
        isFreeDelivery: data['is_free_delivery'] as bool?,
        rating: castToType<double>(data['rating']),
        price: castToType<int>(data['price']),
        distance: castToType<double>(data['distance']),
        category: data['category']
                is aquibrazil_library_oi8i5r_data_schema.CategoryStruct
            ? data['category']
            : aquibrazil_library_oi8i5r_data_schema.CategoryStruct.maybeFromMap(
                data['category']),
      );

  static FilterHomeStruct? maybeFromMap(dynamic data) => data is Map
      ? FilterHomeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'discount': _discount,
        'is_pickup': _isPickup,
        'is_free_delivery': _isFreeDelivery,
        'rating': _rating,
        'price': _price,
        'distance': _distance,
        'category': _category?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
        'is_pickup': serializeParam(
          _isPickup,
          ParamType.bool,
        ),
        'is_free_delivery': serializeParam(
          _isFreeDelivery,
          ParamType.bool,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'distance': serializeParam(
          _distance,
          ParamType.double,
        ),
        'category': aquibrazil_library_oi8i5r_serialization_util.serializeParam(
          _category,
          aquibrazil_library_oi8i5r_serialization_util.ParamType.DataStruct,
        ),
      }.withoutNulls;

  static FilterHomeStruct fromSerializableMap(Map<String, dynamic> data) =>
      FilterHomeStruct(
        discount: deserializeParam(
          data['discount'],
          ParamType.double,
          false,
        ),
        isPickup: deserializeParam(
          data['is_pickup'],
          ParamType.bool,
          false,
        ),
        isFreeDelivery: deserializeParam(
          data['is_free_delivery'],
          ParamType.bool,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        distance: deserializeParam(
          data['distance'],
          ParamType.double,
          false,
        ),
        category: deserializeStructParam(
          data['category'],
          ParamType.DataStruct,
          false,
          structBuilder: aquibrazil_library_oi8i5r_data_schema
              .CategoryStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'FilterHomeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FilterHomeStruct &&
        discount == other.discount &&
        isPickup == other.isPickup &&
        isFreeDelivery == other.isFreeDelivery &&
        rating == other.rating &&
        price == other.price &&
        distance == other.distance &&
        category == other.category;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [discount, isPickup, isFreeDelivery, rating, price, distance, category]);
}

FilterHomeStruct createFilterHomeStruct({
  double? discount,
  bool? isPickup,
  bool? isFreeDelivery,
  double? rating,
  int? price,
  double? distance,
  aquibrazil_library_oi8i5r_data_schema.CategoryStruct? category,
}) =>
    FilterHomeStruct(
      discount: discount,
      isPickup: isPickup,
      isFreeDelivery: isFreeDelivery,
      rating: rating,
      price: price,
      distance: distance,
      category:
          category ?? aquibrazil_library_oi8i5r_data_schema.CategoryStruct(),
    );
