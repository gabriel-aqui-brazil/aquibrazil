// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddonStruct extends BaseStruct {
  AddonStruct({
    String? id,
    String? name,
    double? price,
    String? imageUrl,
  })  : _id = id,
        _name = name,
        _price = price,
        _imageUrl = imageUrl;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  static AddonStruct fromMap(Map<String, dynamic> data) => AddonStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        price: castToType<double>(data['price']),
        imageUrl: data['image_url'] as String?,
      );

  static AddonStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddonStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'price': _price,
        'image_url': _imageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddonStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddonStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddonStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddonStruct &&
        id == other.id &&
        name == other.name &&
        price == other.price &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, price, imageUrl]);
}

AddonStruct createAddonStruct({
  String? id,
  String? name,
  double? price,
  String? imageUrl,
}) =>
    AddonStruct(
      id: id,
      name: name,
      price: price,
      imageUrl: imageUrl,
    );
