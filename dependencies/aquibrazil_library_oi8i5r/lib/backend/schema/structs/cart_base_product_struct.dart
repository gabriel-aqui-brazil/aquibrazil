// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartBaseProductStruct extends BaseStruct {
  CartBaseProductStruct({
    BaseProductStruct? baseProduct,
    List<CartProductAddonStruct>? addons,
    int? quantity,
    double? unitPrice,
    double? priceSumWithAddon,
    String? note,
    CartServiceStruct? service,
  })  : _baseProduct = baseProduct,
        _addons = addons,
        _quantity = quantity,
        _unitPrice = unitPrice,
        _priceSumWithAddon = priceSumWithAddon,
        _note = note,
        _service = service;

  // "base_product" field.
  BaseProductStruct? _baseProduct;
  BaseProductStruct get baseProduct => _baseProduct ?? BaseProductStruct();
  set baseProduct(BaseProductStruct? val) => _baseProduct = val;

  void updateBaseProduct(Function(BaseProductStruct) updateFn) {
    updateFn(_baseProduct ??= BaseProductStruct());
  }

  bool hasBaseProduct() => _baseProduct != null;

  // "addons" field.
  List<CartProductAddonStruct>? _addons;
  List<CartProductAddonStruct> get addons => _addons ?? const [];
  set addons(List<CartProductAddonStruct>? val) => _addons = val;

  void updateAddons(Function(List<CartProductAddonStruct>) updateFn) {
    updateFn(_addons ??= []);
  }

  bool hasAddons() => _addons != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "unit_price" field.
  double? _unitPrice;
  double get unitPrice => _unitPrice ?? 0.0;
  set unitPrice(double? val) => _unitPrice = val;

  void incrementUnitPrice(double amount) => unitPrice = unitPrice + amount;

  bool hasUnitPrice() => _unitPrice != null;

  // "price_sum_with_addon" field.
  double? _priceSumWithAddon;
  double get priceSumWithAddon => _priceSumWithAddon ?? 0.0;
  set priceSumWithAddon(double? val) => _priceSumWithAddon = val;

  void incrementPriceSumWithAddon(double amount) =>
      priceSumWithAddon = priceSumWithAddon + amount;

  bool hasPriceSumWithAddon() => _priceSumWithAddon != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;

  bool hasNote() => _note != null;

  // "service" field.
  CartServiceStruct? _service;
  CartServiceStruct get service => _service ?? CartServiceStruct();
  set service(CartServiceStruct? val) => _service = val;

  void updateService(Function(CartServiceStruct) updateFn) {
    updateFn(_service ??= CartServiceStruct());
  }

  bool hasService() => _service != null;

  static CartBaseProductStruct fromMap(Map<String, dynamic> data) =>
      CartBaseProductStruct(
        baseProduct: data['base_product'] is BaseProductStruct
            ? data['base_product']
            : BaseProductStruct.maybeFromMap(data['base_product']),
        addons: getStructList(
          data['addons'],
          CartProductAddonStruct.fromMap,
        ),
        quantity: castToType<int>(data['quantity']),
        unitPrice: castToType<double>(data['unit_price']),
        priceSumWithAddon: castToType<double>(data['price_sum_with_addon']),
        note: data['note'] as String?,
        service: data['service'] is CartServiceStruct
            ? data['service']
            : CartServiceStruct.maybeFromMap(data['service']),
      );

  static CartBaseProductStruct? maybeFromMap(dynamic data) => data is Map
      ? CartBaseProductStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'base_product': _baseProduct?.toMap(),
        'addons': _addons?.map((e) => e.toMap()).toList(),
        'quantity': _quantity,
        'unit_price': _unitPrice,
        'price_sum_with_addon': _priceSumWithAddon,
        'note': _note,
        'service': _service?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'base_product': serializeParam(
          _baseProduct,
          ParamType.DataStruct,
        ),
        'addons': serializeParam(
          _addons,
          ParamType.DataStruct,
          isList: true,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'unit_price': serializeParam(
          _unitPrice,
          ParamType.double,
        ),
        'price_sum_with_addon': serializeParam(
          _priceSumWithAddon,
          ParamType.double,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'service': serializeParam(
          _service,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CartBaseProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartBaseProductStruct(
        baseProduct: deserializeStructParam(
          data['base_product'],
          ParamType.DataStruct,
          false,
          structBuilder: BaseProductStruct.fromSerializableMap,
        ),
        addons: deserializeStructParam<CartProductAddonStruct>(
          data['addons'],
          ParamType.DataStruct,
          true,
          structBuilder: CartProductAddonStruct.fromSerializableMap,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        unitPrice: deserializeParam(
          data['unit_price'],
          ParamType.double,
          false,
        ),
        priceSumWithAddon: deserializeParam(
          data['price_sum_with_addon'],
          ParamType.double,
          false,
        ),
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
        service: deserializeStructParam(
          data['service'],
          ParamType.DataStruct,
          false,
          structBuilder: CartServiceStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CartBaseProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CartBaseProductStruct &&
        baseProduct == other.baseProduct &&
        listEquality.equals(addons, other.addons) &&
        quantity == other.quantity &&
        unitPrice == other.unitPrice &&
        priceSumWithAddon == other.priceSumWithAddon &&
        note == other.note &&
        service == other.service;
  }

  @override
  int get hashCode => const ListEquality().hash([
        baseProduct,
        addons,
        quantity,
        unitPrice,
        priceSumWithAddon,
        note,
        service
      ]);
}

CartBaseProductStruct createCartBaseProductStruct({
  BaseProductStruct? baseProduct,
  int? quantity,
  double? unitPrice,
  double? priceSumWithAddon,
  String? note,
  CartServiceStruct? service,
}) =>
    CartBaseProductStruct(
      baseProduct: baseProduct ?? BaseProductStruct(),
      quantity: quantity,
      unitPrice: unitPrice,
      priceSumWithAddon: priceSumWithAddon,
      note: note,
      service: service ?? CartServiceStruct(),
    );
