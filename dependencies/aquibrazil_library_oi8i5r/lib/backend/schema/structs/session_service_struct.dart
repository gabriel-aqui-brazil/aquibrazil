// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SessionServiceStruct extends BaseStruct {
  SessionServiceStruct({
    CompanyStruct? company,
    List<BaseProductStruct>? productPromotional,
    List<BaseProductStruct>? service,
    List<SessionStruct>? sessions,
    CustomerStruct? customer,
  })  : _company = company,
        _productPromotional = productPromotional,
        _service = service,
        _sessions = sessions,
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

  // "service" field.
  List<BaseProductStruct>? _service;
  List<BaseProductStruct> get service => _service ?? const [];
  set service(List<BaseProductStruct>? val) => _service = val;

  void updateService(Function(List<BaseProductStruct>) updateFn) {
    updateFn(_service ??= []);
  }

  bool hasService() => _service != null;

  // "sessions" field.
  List<SessionStruct>? _sessions;
  List<SessionStruct> get sessions => _sessions ?? const [];
  set sessions(List<SessionStruct>? val) => _sessions = val;

  void updateSessions(Function(List<SessionStruct>) updateFn) {
    updateFn(_sessions ??= []);
  }

  bool hasSessions() => _sessions != null;

  // "customer" field.
  CustomerStruct? _customer;
  CustomerStruct get customer => _customer ?? CustomerStruct();
  set customer(CustomerStruct? val) => _customer = val;

  void updateCustomer(Function(CustomerStruct) updateFn) {
    updateFn(_customer ??= CustomerStruct());
  }

  bool hasCustomer() => _customer != null;

  static SessionServiceStruct fromMap(Map<String, dynamic> data) =>
      SessionServiceStruct(
        company: data['company'] is CompanyStruct
            ? data['company']
            : CompanyStruct.maybeFromMap(data['company']),
        productPromotional: getStructList(
          data['product_promotional'],
          BaseProductStruct.fromMap,
        ),
        service: getStructList(
          data['service'],
          BaseProductStruct.fromMap,
        ),
        sessions: getStructList(
          data['sessions'],
          SessionStruct.fromMap,
        ),
        customer: data['customer'] is CustomerStruct
            ? data['customer']
            : CustomerStruct.maybeFromMap(data['customer']),
      );

  static SessionServiceStruct? maybeFromMap(dynamic data) => data is Map
      ? SessionServiceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'company': _company?.toMap(),
        'product_promotional':
            _productPromotional?.map((e) => e.toMap()).toList(),
        'service': _service?.map((e) => e.toMap()).toList(),
        'sessions': _sessions?.map((e) => e.toMap()).toList(),
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
        'service': serializeParam(
          _service,
          ParamType.DataStruct,
          isList: true,
        ),
        'sessions': serializeParam(
          _sessions,
          ParamType.DataStruct,
          isList: true,
        ),
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SessionServiceStruct fromSerializableMap(Map<String, dynamic> data) =>
      SessionServiceStruct(
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
        service: deserializeStructParam<BaseProductStruct>(
          data['service'],
          ParamType.DataStruct,
          true,
          structBuilder: BaseProductStruct.fromSerializableMap,
        ),
        sessions: deserializeStructParam<SessionStruct>(
          data['sessions'],
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
  String toString() => 'SessionServiceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SessionServiceStruct &&
        company == other.company &&
        listEquality.equals(productPromotional, other.productPromotional) &&
        listEquality.equals(service, other.service) &&
        listEquality.equals(sessions, other.sessions) &&
        customer == other.customer;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([company, productPromotional, service, sessions, customer]);
}

SessionServiceStruct createSessionServiceStruct({
  CompanyStruct? company,
  CustomerStruct? customer,
}) =>
    SessionServiceStruct(
      company: company ?? CompanyStruct(),
      customer: customer ?? CustomerStruct(),
    );
