// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdemItemStruct extends BaseStruct {
  OrdemItemStruct({
    String? id,
    int? quantity,
    double? unitPrice,
    String? note,
    BaseProductStruct? baseProduct,
    List<CartProductAddonStruct>? addons,
    OrderServiceDetailStruct? orderServiceDetail,
  })  : _id = id,
        _quantity = quantity,
        _unitPrice = unitPrice,
        _note = note,
        _baseProduct = baseProduct,
        _addons = addons,
        _orderServiceDetail = orderServiceDetail;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;

  bool hasNote() => _note != null;

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

  // "order_service_detail" field.
  OrderServiceDetailStruct? _orderServiceDetail;
  OrderServiceDetailStruct get orderServiceDetail =>
      _orderServiceDetail ?? OrderServiceDetailStruct();
  set orderServiceDetail(OrderServiceDetailStruct? val) =>
      _orderServiceDetail = val;

  void updateOrderServiceDetail(Function(OrderServiceDetailStruct) updateFn) {
    updateFn(_orderServiceDetail ??= OrderServiceDetailStruct());
  }

  bool hasOrderServiceDetail() => _orderServiceDetail != null;

  static OrdemItemStruct fromMap(Map<String, dynamic> data) => OrdemItemStruct(
        id: data['id'] as String?,
        quantity: castToType<int>(data['quantity']),
        unitPrice: castToType<double>(data['unit_price']),
        note: data['note'] as String?,
        baseProduct: data['base_product'] is BaseProductStruct
            ? data['base_product']
            : BaseProductStruct.maybeFromMap(data['base_product']),
        addons: getStructList(
          data['addons'],
          CartProductAddonStruct.fromMap,
        ),
        orderServiceDetail:
            data['order_service_detail'] is OrderServiceDetailStruct
                ? data['order_service_detail']
                : OrderServiceDetailStruct.maybeFromMap(
                    data['order_service_detail']),
      );

  static OrdemItemStruct? maybeFromMap(dynamic data) => data is Map
      ? OrdemItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'quantity': _quantity,
        'unit_price': _unitPrice,
        'note': _note,
        'base_product': _baseProduct?.toMap(),
        'addons': _addons?.map((e) => e.toMap()).toList(),
        'order_service_detail': _orderServiceDetail?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'unit_price': serializeParam(
          _unitPrice,
          ParamType.double,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'base_product': serializeParam(
          _baseProduct,
          ParamType.DataStruct,
        ),
        'addons': serializeParam(
          _addons,
          ParamType.DataStruct,
          isList: true,
        ),
        'order_service_detail': serializeParam(
          _orderServiceDetail,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static OrdemItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrdemItemStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
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
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
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
        orderServiceDetail: deserializeStructParam(
          data['order_service_detail'],
          ParamType.DataStruct,
          false,
          structBuilder: OrderServiceDetailStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OrdemItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OrdemItemStruct &&
        id == other.id &&
        quantity == other.quantity &&
        unitPrice == other.unitPrice &&
        note == other.note &&
        baseProduct == other.baseProduct &&
        listEquality.equals(addons, other.addons) &&
        orderServiceDetail == other.orderServiceDetail;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, quantity, unitPrice, note, baseProduct, addons, orderServiceDetail]);
}

OrdemItemStruct createOrdemItemStruct({
  String? id,
  int? quantity,
  double? unitPrice,
  String? note,
  BaseProductStruct? baseProduct,
  OrderServiceDetailStruct? orderServiceDetail,
}) =>
    OrdemItemStruct(
      id: id,
      quantity: quantity,
      unitPrice: unitPrice,
      note: note,
      baseProduct: baseProduct ?? BaseProductStruct(),
      orderServiceDetail: orderServiceDetail ?? OrderServiceDetailStruct(),
    );
