// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartProductAddonStruct extends BaseStruct {
  CartProductAddonStruct({
    String? id,
    String? name,
    AddonGroupStruct? addonGroup,
    int? quantity,
    String? pizzaId,
    String? productAddonId,
    double? unitPrice,
    String? note,
  })  : _id = id,
        _name = name,
        _addonGroup = addonGroup,
        _quantity = quantity,
        _pizzaId = pizzaId,
        _productAddonId = productAddonId,
        _unitPrice = unitPrice,
        _note = note;

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

  // "addon_group" field.
  AddonGroupStruct? _addonGroup;
  AddonGroupStruct get addonGroup => _addonGroup ?? AddonGroupStruct();
  set addonGroup(AddonGroupStruct? val) => _addonGroup = val;

  void updateAddonGroup(Function(AddonGroupStruct) updateFn) {
    updateFn(_addonGroup ??= AddonGroupStruct());
  }

  bool hasAddonGroup() => _addonGroup != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "pizza_id" field.
  String? _pizzaId;
  String get pizzaId => _pizzaId ?? '';
  set pizzaId(String? val) => _pizzaId = val;

  bool hasPizzaId() => _pizzaId != null;

  // "product_addon_id" field.
  String? _productAddonId;
  String get productAddonId => _productAddonId ?? '';
  set productAddonId(String? val) => _productAddonId = val;

  bool hasProductAddonId() => _productAddonId != null;

  // "unit_price" field.
  double? _unitPrice;
  double get unitPrice => _unitPrice ?? 0.0;
  set unitPrice(double? val) => _unitPrice = val;

  void incrementUnitPrice(double amount) => unitPrice = unitPrice + amount;

  bool hasUnitPrice() => _unitPrice != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;

  bool hasNote() => _note != null;

  static CartProductAddonStruct fromMap(Map<String, dynamic> data) =>
      CartProductAddonStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        addonGroup: data['addon_group'] is AddonGroupStruct
            ? data['addon_group']
            : AddonGroupStruct.maybeFromMap(data['addon_group']),
        quantity: castToType<int>(data['quantity']),
        pizzaId: data['pizza_id'] as String?,
        productAddonId: data['product_addon_id'] as String?,
        unitPrice: castToType<double>(data['unit_price']),
        note: data['note'] as String?,
      );

  static CartProductAddonStruct? maybeFromMap(dynamic data) => data is Map
      ? CartProductAddonStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'addon_group': _addonGroup?.toMap(),
        'quantity': _quantity,
        'pizza_id': _pizzaId,
        'product_addon_id': _productAddonId,
        'unit_price': _unitPrice,
        'note': _note,
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
        'addon_group': serializeParam(
          _addonGroup,
          ParamType.DataStruct,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'pizza_id': serializeParam(
          _pizzaId,
          ParamType.String,
        ),
        'product_addon_id': serializeParam(
          _productAddonId,
          ParamType.String,
        ),
        'unit_price': serializeParam(
          _unitPrice,
          ParamType.double,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
      }.withoutNulls;

  static CartProductAddonStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CartProductAddonStruct(
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
        addonGroup: deserializeStructParam(
          data['addon_group'],
          ParamType.DataStruct,
          false,
          structBuilder: AddonGroupStruct.fromSerializableMap,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        pizzaId: deserializeParam(
          data['pizza_id'],
          ParamType.String,
          false,
        ),
        productAddonId: deserializeParam(
          data['product_addon_id'],
          ParamType.String,
          false,
        ),
        unitPrice: deserializeParam(
          data['unit_price'],
          ParamType.double,
          false,
        ),
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CartProductAddonStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartProductAddonStruct &&
        id == other.id &&
        name == other.name &&
        addonGroup == other.addonGroup &&
        quantity == other.quantity &&
        pizzaId == other.pizzaId &&
        productAddonId == other.productAddonId &&
        unitPrice == other.unitPrice &&
        note == other.note;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        addonGroup,
        quantity,
        pizzaId,
        productAddonId,
        unitPrice,
        note
      ]);
}

CartProductAddonStruct createCartProductAddonStruct({
  String? id,
  String? name,
  AddonGroupStruct? addonGroup,
  int? quantity,
  String? pizzaId,
  String? productAddonId,
  double? unitPrice,
  String? note,
}) =>
    CartProductAddonStruct(
      id: id,
      name: name,
      addonGroup: addonGroup ?? AddonGroupStruct(),
      quantity: quantity,
      pizzaId: pizzaId,
      productAddonId: productAddonId,
      unitPrice: unitPrice,
      note: note,
    );
