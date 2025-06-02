// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddonGroupStruct extends BaseStruct {
  AddonGroupStruct({
    String? id,
    String? name,
    String? baseProductId,
    int? minQuantity,
    int? maxQuantity,
    bool? isMandatory,
    List<AddonStruct>? productAddon,
  })  : _id = id,
        _name = name,
        _baseProductId = baseProductId,
        _minQuantity = minQuantity,
        _maxQuantity = maxQuantity,
        _isMandatory = isMandatory,
        _productAddon = productAddon;

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

  // "base_product_id" field.
  String? _baseProductId;
  String get baseProductId => _baseProductId ?? '';
  set baseProductId(String? val) => _baseProductId = val;

  bool hasBaseProductId() => _baseProductId != null;

  // "min_quantity" field.
  int? _minQuantity;
  int get minQuantity => _minQuantity ?? 0;
  set minQuantity(int? val) => _minQuantity = val;

  void incrementMinQuantity(int amount) => minQuantity = minQuantity + amount;

  bool hasMinQuantity() => _minQuantity != null;

  // "max_quantity" field.
  int? _maxQuantity;
  int get maxQuantity => _maxQuantity ?? 0;
  set maxQuantity(int? val) => _maxQuantity = val;

  void incrementMaxQuantity(int amount) => maxQuantity = maxQuantity + amount;

  bool hasMaxQuantity() => _maxQuantity != null;

  // "is_mandatory" field.
  bool? _isMandatory;
  bool get isMandatory => _isMandatory ?? false;
  set isMandatory(bool? val) => _isMandatory = val;

  bool hasIsMandatory() => _isMandatory != null;

  // "product_addon" field.
  List<AddonStruct>? _productAddon;
  List<AddonStruct> get productAddon => _productAddon ?? const [];
  set productAddon(List<AddonStruct>? val) => _productAddon = val;

  void updateProductAddon(Function(List<AddonStruct>) updateFn) {
    updateFn(_productAddon ??= []);
  }

  bool hasProductAddon() => _productAddon != null;

  static AddonGroupStruct fromMap(Map<String, dynamic> data) =>
      AddonGroupStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        baseProductId: data['base_product_id'] as String?,
        minQuantity: castToType<int>(data['min_quantity']),
        maxQuantity: castToType<int>(data['max_quantity']),
        isMandatory: data['is_mandatory'] as bool?,
        productAddon: getStructList(
          data['product_addon'],
          AddonStruct.fromMap,
        ),
      );

  static AddonGroupStruct? maybeFromMap(dynamic data) => data is Map
      ? AddonGroupStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'base_product_id': _baseProductId,
        'min_quantity': _minQuantity,
        'max_quantity': _maxQuantity,
        'is_mandatory': _isMandatory,
        'product_addon': _productAddon?.map((e) => e.toMap()).toList(),
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
        'base_product_id': serializeParam(
          _baseProductId,
          ParamType.String,
        ),
        'min_quantity': serializeParam(
          _minQuantity,
          ParamType.int,
        ),
        'max_quantity': serializeParam(
          _maxQuantity,
          ParamType.int,
        ),
        'is_mandatory': serializeParam(
          _isMandatory,
          ParamType.bool,
        ),
        'product_addon': serializeParam(
          _productAddon,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static AddonGroupStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddonGroupStruct(
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
        baseProductId: deserializeParam(
          data['base_product_id'],
          ParamType.String,
          false,
        ),
        minQuantity: deserializeParam(
          data['min_quantity'],
          ParamType.int,
          false,
        ),
        maxQuantity: deserializeParam(
          data['max_quantity'],
          ParamType.int,
          false,
        ),
        isMandatory: deserializeParam(
          data['is_mandatory'],
          ParamType.bool,
          false,
        ),
        productAddon: deserializeStructParam<AddonStruct>(
          data['product_addon'],
          ParamType.DataStruct,
          true,
          structBuilder: AddonStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AddonGroupStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AddonGroupStruct &&
        id == other.id &&
        name == other.name &&
        baseProductId == other.baseProductId &&
        minQuantity == other.minQuantity &&
        maxQuantity == other.maxQuantity &&
        isMandatory == other.isMandatory &&
        listEquality.equals(productAddon, other.productAddon);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        baseProductId,
        minQuantity,
        maxQuantity,
        isMandatory,
        productAddon
      ]);
}

AddonGroupStruct createAddonGroupStruct({
  String? id,
  String? name,
  String? baseProductId,
  int? minQuantity,
  int? maxQuantity,
  bool? isMandatory,
}) =>
    AddonGroupStruct(
      id: id,
      name: name,
      baseProductId: baseProductId,
      minQuantity: minQuantity,
      maxQuantity: maxQuantity,
      isMandatory: isMandatory,
    );
