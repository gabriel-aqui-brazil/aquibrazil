// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SessionProductStruct extends BaseStruct {
  SessionProductStruct({
    CompanyStruct? company,
    List<BaseProductStruct>? productPromotional,
    List<SessionStruct>? session,
    List<SessionStruct>? product,
    CustomerStruct? customer,
  })  : _company = company,
        _productPromotional = productPromotional,
        _session = session,
        _product = product,
        _customer = customer;

  // "company" field.
  CompanyStruct? _company;
  CompanyStruct get company => _company ?? CompanyStruct();
  set company(CompanyStruct? val) => _company = val;

  void updateCompany(Function(CompanyStruct) updateFn) {
    updateFn(_company ??= CompanyStruct());
  }

  bool hasCompany() => _company != null;

  // "product_promotional" field.
  List<BaseProductStruct>? _productPromotional;
  List<BaseProductStruct> get productPromotional =>
      _productPromotional ?? const [];
  set productPromotional(List<BaseProductStruct>? val) =>
      _productPromotional = val;

  void updateProductPromotional(Function(List<BaseProductStruct>) updateFn) {
    updateFn(_productPromotional ??= []);
  }

  bool hasProductPromotional() => _productPromotional != null;

  // "session" field.
  List<SessionStruct>? _session;
  List<SessionStruct> get session => _session ?? const [];
  set session(List<SessionStruct>? val) => _session = val;

  void updateSession(Function(List<SessionStruct>) updateFn) {
    updateFn(_session ??= []);
  }

  bool hasSession() => _session != null;

  // "product" field.
  List<SessionStruct>? _product;
  List<SessionStruct> get product => _product ?? const [];
  set product(List<SessionStruct>? val) => _product = val;

  void updateProduct(Function(List<SessionStruct>) updateFn) {
    updateFn(_product ??= []);
  }

  bool hasProduct() => _product != null;

  // "customer" field.
  CustomerStruct? _customer;
  CustomerStruct get customer => _customer ?? CustomerStruct();
  set customer(CustomerStruct? val) => _customer = val;

  void updateCustomer(Function(CustomerStruct) updateFn) {
    updateFn(_customer ??= CustomerStruct());
  }

  bool hasCustomer() => _customer != null;

  static SessionProductStruct fromMap(Map<String, dynamic> data) =>
      SessionProductStruct(
        company: data['company'] is CompanyStruct
            ? data['company']
            : CompanyStruct.maybeFromMap(data['company']),
        productPromotional: getStructList(
          data['product_promotional'],
          BaseProductStruct.fromMap,
        ),
        session: getStructList(
          data['session'],
          SessionStruct.fromMap,
        ),
        product: getStructList(
          data['product'],
          SessionStruct.fromMap,
        ),
        customer: data['customer'] is CustomerStruct
            ? data['customer']
            : CustomerStruct.maybeFromMap(data['customer']),
      );

  static SessionProductStruct? maybeFromMap(dynamic data) => data is Map
      ? SessionProductStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'company': _company?.toMap(),
        'product_promotional':
            _productPromotional?.map((e) => e.toMap()).toList(),
        'session': _session?.map((e) => e.toMap()).toList(),
        'product': _product?.map((e) => e.toMap()).toList(),
        'customer': _customer?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'company': serializeParam(
          _company,
          ParamType.DataStruct,
        ),
        'product_promotional': serializeParam(
          _productPromotional,
          ParamType.DataStruct,
          isList: true,
        ),
        'session': serializeParam(
          _session,
          ParamType.DataStruct,
          isList: true,
        ),
        'product': serializeParam(
          _product,
          ParamType.DataStruct,
          isList: true,
        ),
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SessionProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      SessionProductStruct(
        company: deserializeStructParam(
          data['company'],
          ParamType.DataStruct,
          false,
          structBuilder: CompanyStruct.fromSerializableMap,
        ),
        productPromotional: deserializeStructParam<BaseProductStruct>(
          data['product_promotional'],
          ParamType.DataStruct,
          true,
          structBuilder: BaseProductStruct.fromSerializableMap,
        ),
        session: deserializeStructParam<SessionStruct>(
          data['session'],
          ParamType.DataStruct,
          true,
          structBuilder: SessionStruct.fromSerializableMap,
        ),
        product: deserializeStructParam<SessionStruct>(
          data['product'],
          ParamType.DataStruct,
          true,
          structBuilder: SessionStruct.fromSerializableMap,
        ),
        customer: deserializeStructParam(
          data['customer'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SessionProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SessionProductStruct &&
        company == other.company &&
        listEquality.equals(productPromotional, other.productPromotional) &&
        listEquality.equals(session, other.session) &&
        listEquality.equals(product, other.product) &&
        customer == other.customer;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([company, productPromotional, session, product, customer]);
}

SessionProductStruct createSessionProductStruct({
  CompanyStruct? company,
  CustomerStruct? customer,
}) =>
    SessionProductStruct(
      company: company ?? CompanyStruct(),
      customer: customer ?? CustomerStruct(),
    );
