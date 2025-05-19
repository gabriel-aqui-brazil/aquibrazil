// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartStruct extends BaseStruct {
  CartStruct({
    CompanyStruct? company,
    CustomerStruct? customer,
    List<CartBaseProductStruct>? items,
    double? subtotal,
    double? total,
    double? deliveryFee,
    double? taxAndService,
    double? aquipassSaved,
    double? cashback,
    bool? hasPriceChanged,
    bool? companyOpen,
    List<OperatingHourStruct>? operatingHour,
    int? deliveryDuration,
    int? deliveryDurationDate,
  })  : _company = company,
        _customer = customer,
        _items = items,
        _subtotal = subtotal,
        _total = total,
        _deliveryFee = deliveryFee,
        _taxAndService = taxAndService,
        _aquipassSaved = aquipassSaved,
        _cashback = cashback,
        _hasPriceChanged = hasPriceChanged,
        _companyOpen = companyOpen,
        _operatingHour = operatingHour,
        _deliveryDuration = deliveryDuration,
        _deliveryDurationDate = deliveryDurationDate;

  // "company" field.
  CompanyStruct? _company;
  CompanyStruct get company => _company ?? CompanyStruct();
  set company(CompanyStruct? val) => _company = val;

  void updateCompany(Function(CompanyStruct) updateFn) {
    updateFn(_company ??= CompanyStruct());
  }

  bool hasCompany() => _company != null;

  // "customer" field.
  CustomerStruct? _customer;
  CustomerStruct get customer => _customer ?? CustomerStruct();
  set customer(CustomerStruct? val) => _customer = val;

  void updateCustomer(Function(CustomerStruct) updateFn) {
    updateFn(_customer ??= CustomerStruct());
  }

  bool hasCustomer() => _customer != null;

  // "items" field.
  List<CartBaseProductStruct>? _items;
  List<CartBaseProductStruct> get items => _items ?? const [];
  set items(List<CartBaseProductStruct>? val) => _items = val;

  void updateItems(Function(List<CartBaseProductStruct>) updateFn) {
    updateFn(_items ??= []);
  }

  bool hasItems() => _items != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  set subtotal(double? val) => _subtotal = val;

  void incrementSubtotal(double amount) => subtotal = subtotal + amount;

  bool hasSubtotal() => _subtotal != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;

  void incrementTotal(double amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "delivery_fee" field.
  double? _deliveryFee;
  double get deliveryFee => _deliveryFee ?? 0.0;
  set deliveryFee(double? val) => _deliveryFee = val;

  void incrementDeliveryFee(double amount) =>
      deliveryFee = deliveryFee + amount;

  bool hasDeliveryFee() => _deliveryFee != null;

  // "tax_and_service" field.
  double? _taxAndService;
  double get taxAndService => _taxAndService ?? 0.0;
  set taxAndService(double? val) => _taxAndService = val;

  void incrementTaxAndService(double amount) =>
      taxAndService = taxAndService + amount;

  bool hasTaxAndService() => _taxAndService != null;

  // "aquipass_saved" field.
  double? _aquipassSaved;
  double get aquipassSaved => _aquipassSaved ?? 0.0;
  set aquipassSaved(double? val) => _aquipassSaved = val;

  void incrementAquipassSaved(double amount) =>
      aquipassSaved = aquipassSaved + amount;

  bool hasAquipassSaved() => _aquipassSaved != null;

  // "cashback" field.
  double? _cashback;
  double get cashback => _cashback ?? 0.0;
  set cashback(double? val) => _cashback = val;

  void incrementCashback(double amount) => cashback = cashback + amount;

  bool hasCashback() => _cashback != null;

  // "has_price_changed" field.
  bool? _hasPriceChanged;
  bool get hasPriceChanged => _hasPriceChanged ?? false;
  set hasPriceChanged(bool? val) => _hasPriceChanged = val;

  bool hasHasPriceChanged() => _hasPriceChanged != null;

  // "company_open" field.
  bool? _companyOpen;
  bool get companyOpen => _companyOpen ?? false;
  set companyOpen(bool? val) => _companyOpen = val;

  bool hasCompanyOpen() => _companyOpen != null;

  // "operating_hour" field.
  List<OperatingHourStruct>? _operatingHour;
  List<OperatingHourStruct> get operatingHour => _operatingHour ?? const [];
  set operatingHour(List<OperatingHourStruct>? val) => _operatingHour = val;

  void updateOperatingHour(Function(List<OperatingHourStruct>) updateFn) {
    updateFn(_operatingHour ??= []);
  }

  bool hasOperatingHour() => _operatingHour != null;

  // "delivery_duration" field.
  int? _deliveryDuration;
  int get deliveryDuration => _deliveryDuration ?? 0;
  set deliveryDuration(int? val) => _deliveryDuration = val;

  void incrementDeliveryDuration(int amount) =>
      deliveryDuration = deliveryDuration + amount;

  bool hasDeliveryDuration() => _deliveryDuration != null;

  // "delivery_duration_date" field.
  int? _deliveryDurationDate;
  int get deliveryDurationDate => _deliveryDurationDate ?? 0;
  set deliveryDurationDate(int? val) => _deliveryDurationDate = val;

  void incrementDeliveryDurationDate(int amount) =>
      deliveryDurationDate = deliveryDurationDate + amount;

  bool hasDeliveryDurationDate() => _deliveryDurationDate != null;

  static CartStruct fromMap(Map<String, dynamic> data) => CartStruct(
        company: data['company'] is CompanyStruct
            ? data['company']
            : CompanyStruct.maybeFromMap(data['company']),
        customer: data['customer'] is CustomerStruct
            ? data['customer']
            : CustomerStruct.maybeFromMap(data['customer']),
        items: getStructList(
          data['items'],
          CartBaseProductStruct.fromMap,
        ),
        subtotal: castToType<double>(data['subtotal']),
        total: castToType<double>(data['total']),
        deliveryFee: castToType<double>(data['delivery_fee']),
        taxAndService: castToType<double>(data['tax_and_service']),
        aquipassSaved: castToType<double>(data['aquipass_saved']),
        cashback: castToType<double>(data['cashback']),
        hasPriceChanged: data['has_price_changed'] as bool?,
        companyOpen: data['company_open'] as bool?,
        operatingHour: getStructList(
          data['operating_hour'],
          OperatingHourStruct.fromMap,
        ),
        deliveryDuration: castToType<int>(data['delivery_duration']),
        deliveryDurationDate: castToType<int>(data['delivery_duration_date']),
      );

  static CartStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'company': _company?.toMap(),
        'customer': _customer?.toMap(),
        'items': _items?.map((e) => e.toMap()).toList(),
        'subtotal': _subtotal,
        'total': _total,
        'delivery_fee': _deliveryFee,
        'tax_and_service': _taxAndService,
        'aquipass_saved': _aquipassSaved,
        'cashback': _cashback,
        'has_price_changed': _hasPriceChanged,
        'company_open': _companyOpen,
        'operating_hour': _operatingHour?.map((e) => e.toMap()).toList(),
        'delivery_duration': _deliveryDuration,
        'delivery_duration_date': _deliveryDurationDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'company': serializeParam(
          _company,
          ParamType.DataStruct,
        ),
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
        ),
        'items': serializeParam(
          _items,
          ParamType.DataStruct,
          isList: true,
        ),
        'subtotal': serializeParam(
          _subtotal,
          ParamType.double,
        ),
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
        'delivery_fee': serializeParam(
          _deliveryFee,
          ParamType.double,
        ),
        'tax_and_service': serializeParam(
          _taxAndService,
          ParamType.double,
        ),
        'aquipass_saved': serializeParam(
          _aquipassSaved,
          ParamType.double,
        ),
        'cashback': serializeParam(
          _cashback,
          ParamType.double,
        ),
        'has_price_changed': serializeParam(
          _hasPriceChanged,
          ParamType.bool,
        ),
        'company_open': serializeParam(
          _companyOpen,
          ParamType.bool,
        ),
        'operating_hour': serializeParam(
          _operatingHour,
          ParamType.DataStruct,
          isList: true,
        ),
        'delivery_duration': serializeParam(
          _deliveryDuration,
          ParamType.int,
        ),
        'delivery_duration_date': serializeParam(
          _deliveryDurationDate,
          ParamType.int,
        ),
      }.withoutNulls;

  static CartStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartStruct(
        company: deserializeStructParam(
          data['company'],
          ParamType.DataStruct,
          false,
          structBuilder: CompanyStruct.fromSerializableMap,
        ),
        customer: deserializeStructParam(
          data['customer'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
        items: deserializeStructParam<CartBaseProductStruct>(
          data['items'],
          ParamType.DataStruct,
          true,
          structBuilder: CartBaseProductStruct.fromSerializableMap,
        ),
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.double,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
        deliveryFee: deserializeParam(
          data['delivery_fee'],
          ParamType.double,
          false,
        ),
        taxAndService: deserializeParam(
          data['tax_and_service'],
          ParamType.double,
          false,
        ),
        aquipassSaved: deserializeParam(
          data['aquipass_saved'],
          ParamType.double,
          false,
        ),
        cashback: deserializeParam(
          data['cashback'],
          ParamType.double,
          false,
        ),
        hasPriceChanged: deserializeParam(
          data['has_price_changed'],
          ParamType.bool,
          false,
        ),
        companyOpen: deserializeParam(
          data['company_open'],
          ParamType.bool,
          false,
        ),
        operatingHour: deserializeStructParam<OperatingHourStruct>(
          data['operating_hour'],
          ParamType.DataStruct,
          true,
          structBuilder: OperatingHourStruct.fromSerializableMap,
        ),
        deliveryDuration: deserializeParam(
          data['delivery_duration'],
          ParamType.int,
          false,
        ),
        deliveryDurationDate: deserializeParam(
          data['delivery_duration_date'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CartStruct &&
        company == other.company &&
        customer == other.customer &&
        listEquality.equals(items, other.items) &&
        subtotal == other.subtotal &&
        total == other.total &&
        deliveryFee == other.deliveryFee &&
        taxAndService == other.taxAndService &&
        aquipassSaved == other.aquipassSaved &&
        cashback == other.cashback &&
        hasPriceChanged == other.hasPriceChanged &&
        companyOpen == other.companyOpen &&
        listEquality.equals(operatingHour, other.operatingHour) &&
        deliveryDuration == other.deliveryDuration &&
        deliveryDurationDate == other.deliveryDurationDate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        company,
        customer,
        items,
        subtotal,
        total,
        deliveryFee,
        taxAndService,
        aquipassSaved,
        cashback,
        hasPriceChanged,
        companyOpen,
        operatingHour,
        deliveryDuration,
        deliveryDurationDate
      ]);
}

CartStruct createCartStruct({
  CompanyStruct? company,
  CustomerStruct? customer,
  double? subtotal,
  double? total,
  double? deliveryFee,
  double? taxAndService,
  double? aquipassSaved,
  double? cashback,
  bool? hasPriceChanged,
  bool? companyOpen,
  int? deliveryDuration,
  int? deliveryDurationDate,
}) =>
    CartStruct(
      company: company ?? CompanyStruct(),
      customer: customer ?? CustomerStruct(),
      subtotal: subtotal,
      total: total,
      deliveryFee: deliveryFee,
      taxAndService: taxAndService,
      aquipassSaved: aquipassSaved,
      cashback: cashback,
      hasPriceChanged: hasPriceChanged,
      companyOpen: companyOpen,
      deliveryDuration: deliveryDuration,
      deliveryDurationDate: deliveryDurationDate,
    );
