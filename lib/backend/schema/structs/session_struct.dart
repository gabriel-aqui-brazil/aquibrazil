// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SessionStruct extends BaseStruct {
  SessionStruct({
    String? id,
    String? name,
    int? order,
    bool? isActive,
    List<BaseProductStruct>? baseProduct,
  })  : _id = id,
        _name = name,
        _order = order,
        _isActive = isActive,
        _baseProduct = baseProduct;

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

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;

  void incrementOrder(int amount) => order = order + amount;

  bool hasOrder() => _order != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  // "base_product" field.
  List<BaseProductStruct>? _baseProduct;
  List<BaseProductStruct> get baseProduct => _baseProduct ?? const [];
  set baseProduct(List<BaseProductStruct>? val) => _baseProduct = val;

  void updateBaseProduct(Function(List<BaseProductStruct>) updateFn) {
    updateFn(_baseProduct ??= []);
  }

  bool hasBaseProduct() => _baseProduct != null;

  static SessionStruct fromMap(Map<String, dynamic> data) => SessionStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        order: castToType<int>(data['order']),
        isActive: data['is_active'] as bool?,
        baseProduct: getStructList(
          data['base_product'],
          BaseProductStruct.fromMap,
        ),
      );

  static SessionStruct? maybeFromMap(dynamic data) =>
      data is Map ? SessionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'order': _order,
        'is_active': _isActive,
        'base_product': _baseProduct?.map((e) => e.toMap()).toList(),
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
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
        'is_active': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'base_product': serializeParam(
          _baseProduct,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static SessionStruct fromSerializableMap(Map<String, dynamic> data) =>
      SessionStruct(
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
        order: deserializeParam(
          data['order'],
          ParamType.int,
          false,
        ),
        isActive: deserializeParam(
          data['is_active'],
          ParamType.bool,
          false,
        ),
        baseProduct: deserializeStructParam<BaseProductStruct>(
          data['base_product'],
          ParamType.DataStruct,
          true,
          structBuilder: BaseProductStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SessionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SessionStruct &&
        id == other.id &&
        name == other.name &&
        order == other.order &&
        isActive == other.isActive &&
        listEquality.equals(baseProduct, other.baseProduct);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, order, isActive, baseProduct]);
}

SessionStruct createSessionStruct({
  String? id,
  String? name,
  int? order,
  bool? isActive,
}) =>
    SessionStruct(
      id: id,
      name: name,
      order: order,
      isActive: isActive,
    );
