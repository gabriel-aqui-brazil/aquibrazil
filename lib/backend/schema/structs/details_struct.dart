// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailsStruct extends BaseStruct {
  DetailsStruct({
    String? id,
    String? name,
    double? price,
    String? description,
    bool? isActive,
    int? individualDiscount,
    String? code,
    bool? isVegan,
    bool? isGluttenFree,
    ImageStruct? image,
  })  : _id = id,
        _name = name,
        _price = price,
        _description = description,
        _isActive = isActive,
        _individualDiscount = individualDiscount,
        _code = code,
        _isVegan = isVegan,
        _isGluttenFree = isGluttenFree,
        _image = image;

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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  // "individual_discount" field.
  int? _individualDiscount;
  int get individualDiscount => _individualDiscount ?? 0;
  set individualDiscount(int? val) => _individualDiscount = val;

  void incrementIndividualDiscount(int amount) =>
      individualDiscount = individualDiscount + amount;

  bool hasIndividualDiscount() => _individualDiscount != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "is_vegan" field.
  bool? _isVegan;
  bool get isVegan => _isVegan ?? false;
  set isVegan(bool? val) => _isVegan = val;

  bool hasIsVegan() => _isVegan != null;

  // "is_glutten_free" field.
  bool? _isGluttenFree;
  bool get isGluttenFree => _isGluttenFree ?? false;
  set isGluttenFree(bool? val) => _isGluttenFree = val;

  bool hasIsGluttenFree() => _isGluttenFree != null;

  // "image" field.
  ImageStruct? _image;
  ImageStruct get image => _image ?? ImageStruct();
  set image(ImageStruct? val) => _image = val;

  void updateImage(Function(ImageStruct) updateFn) {
    updateFn(_image ??= ImageStruct());
  }

  bool hasImage() => _image != null;

  static DetailsStruct fromMap(Map<String, dynamic> data) => DetailsStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        price: castToType<double>(data['price']),
        description: data['description'] as String?,
        isActive: data['is_active'] as bool?,
        individualDiscount: castToType<int>(data['individual_discount']),
        code: data['code'] as String?,
        isVegan: data['is_vegan'] as bool?,
        isGluttenFree: data['is_glutten_free'] as bool?,
        image: data['image'] is ImageStruct
            ? data['image']
            : ImageStruct.maybeFromMap(data['image']),
      );

  static DetailsStruct? maybeFromMap(dynamic data) =>
      data is Map ? DetailsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'price': _price,
        'description': _description,
        'is_active': _isActive,
        'individual_discount': _individualDiscount,
        'code': _code,
        'is_vegan': _isVegan,
        'is_glutten_free': _isGluttenFree,
        'image': _image?.toMap(),
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
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'is_active': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'individual_discount': serializeParam(
          _individualDiscount,
          ParamType.int,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'is_vegan': serializeParam(
          _isVegan,
          ParamType.bool,
        ),
        'is_glutten_free': serializeParam(
          _isGluttenFree,
          ParamType.bool,
        ),
        'image': serializeParam(
          _image,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static DetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DetailsStruct(
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
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        isActive: deserializeParam(
          data['is_active'],
          ParamType.bool,
          false,
        ),
        individualDiscount: deserializeParam(
          data['individual_discount'],
          ParamType.int,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        isVegan: deserializeParam(
          data['is_vegan'],
          ParamType.bool,
          false,
        ),
        isGluttenFree: deserializeParam(
          data['is_glutten_free'],
          ParamType.bool,
          false,
        ),
        image: deserializeStructParam(
          data['image'],
          ParamType.DataStruct,
          false,
          structBuilder: ImageStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DetailsStruct &&
        id == other.id &&
        name == other.name &&
        price == other.price &&
        description == other.description &&
        isActive == other.isActive &&
        individualDiscount == other.individualDiscount &&
        code == other.code &&
        isVegan == other.isVegan &&
        isGluttenFree == other.isGluttenFree &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        price,
        description,
        isActive,
        individualDiscount,
        code,
        isVegan,
        isGluttenFree,
        image
      ]);
}

DetailsStruct createDetailsStruct({
  String? id,
  String? name,
  double? price,
  String? description,
  bool? isActive,
  int? individualDiscount,
  String? code,
  bool? isVegan,
  bool? isGluttenFree,
  ImageStruct? image,
}) =>
    DetailsStruct(
      id: id,
      name: name,
      price: price,
      description: description,
      isActive: isActive,
      individualDiscount: individualDiscount,
      code: code,
      isVegan: isVegan,
      isGluttenFree: isGluttenFree,
      image: image ?? ImageStruct(),
    );
