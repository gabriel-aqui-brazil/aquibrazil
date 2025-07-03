// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RatingStruct extends BaseStruct {
  RatingStruct({
    int? createdAt,
    double? rating,
    String? ratingDescription,
    CustomerStruct? customer,
  })  : _createdAt = createdAt,
        _rating = rating,
        _ratingDescription = ratingDescription,
        _customer = customer;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  // "rating_description" field.
  String? _ratingDescription;
  String get ratingDescription => _ratingDescription ?? '';
  set ratingDescription(String? val) => _ratingDescription = val;

  bool hasRatingDescription() => _ratingDescription != null;

  // "customer" field.
  CustomerStruct? _customer;
  CustomerStruct get customer => _customer ?? CustomerStruct();
  set customer(CustomerStruct? val) => _customer = val;

  void updateCustomer(Function(CustomerStruct) updateFn) {
    updateFn(_customer ??= CustomerStruct());
  }

  bool hasCustomer() => _customer != null;

  static RatingStruct fromMap(Map<String, dynamic> data) => RatingStruct(
        createdAt: castToType<int>(data['created_at']),
        rating: castToType<double>(data['rating']),
        ratingDescription: data['rating_description'] as String?,
        customer: data['customer'] is CustomerStruct
            ? data['customer']
            : CustomerStruct.maybeFromMap(data['customer']),
      );

  static RatingStruct? maybeFromMap(dynamic data) =>
      data is Map ? RatingStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'created_at': _createdAt,
        'rating': _rating,
        'rating_description': _ratingDescription,
        'customer': _customer?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
        'rating_description': serializeParam(
          _ratingDescription,
          ParamType.String,
        ),
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static RatingStruct fromSerializableMap(Map<String, dynamic> data) =>
      RatingStruct(
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
        ratingDescription: deserializeParam(
          data['rating_description'],
          ParamType.String,
          false,
        ),
        customer: deserializeStructParam(
          data['customer'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'RatingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RatingStruct &&
        createdAt == other.createdAt &&
        rating == other.rating &&
        ratingDescription == other.ratingDescription &&
        customer == other.customer;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([createdAt, rating, ratingDescription, customer]);
}

RatingStruct createRatingStruct({
  int? createdAt,
  double? rating,
  String? ratingDescription,
  CustomerStruct? customer,
}) =>
    RatingStruct(
      createdAt: createdAt,
      rating: rating,
      ratingDescription: ratingDescription,
      customer: customer ?? CustomerStruct(),
    );
