// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HomeStruct extends BaseStruct {
  HomeStruct({
    CustomerStruct? customer,
    List<CategoryStruct>? category,
    List<AdsStruct>? adsBanner,
    List<AdsStruct>? adsDelivery,
    List<CompanyPartnerStruct>? companyPartner,
    List<CompanyStruct>? companyPromotional,
    List<CompanyStruct>? companyShortly,
  })  : _customer = customer,
        _category = category,
        _adsBanner = adsBanner,
        _adsDelivery = adsDelivery,
        _companyPartner = companyPartner,
        _companyPromotional = companyPromotional,
        _companyShortly = companyShortly;

  // "customer" field.
  CustomerStruct? _customer;
  CustomerStruct get customer => _customer ?? CustomerStruct();
  set customer(CustomerStruct? val) => _customer = val;

  void updateCustomer(Function(CustomerStruct) updateFn) {
    updateFn(_customer ??= CustomerStruct());
  }

  bool hasCustomer() => _customer != null;

  // "category" field.
  List<CategoryStruct>? _category;
  List<CategoryStruct> get category => _category ?? const [];
  set category(List<CategoryStruct>? val) => _category = val;

  void updateCategory(Function(List<CategoryStruct>) updateFn) {
    updateFn(_category ??= []);
  }

  bool hasCategory() => _category != null;

  // "ads_banner" field.
  List<AdsStruct>? _adsBanner;
  List<AdsStruct> get adsBanner => _adsBanner ?? const [];
  set adsBanner(List<AdsStruct>? val) => _adsBanner = val;

  void updateAdsBanner(Function(List<AdsStruct>) updateFn) {
    updateFn(_adsBanner ??= []);
  }

  bool hasAdsBanner() => _adsBanner != null;

  // "ads_delivery" field.
  List<AdsStruct>? _adsDelivery;
  List<AdsStruct> get adsDelivery => _adsDelivery ?? const [];
  set adsDelivery(List<AdsStruct>? val) => _adsDelivery = val;

  void updateAdsDelivery(Function(List<AdsStruct>) updateFn) {
    updateFn(_adsDelivery ??= []);
  }

  bool hasAdsDelivery() => _adsDelivery != null;

  // "company_partner" field.
  List<CompanyPartnerStruct>? _companyPartner;
  List<CompanyPartnerStruct> get companyPartner => _companyPartner ?? const [];
  set companyPartner(List<CompanyPartnerStruct>? val) => _companyPartner = val;

  void updateCompanyPartner(Function(List<CompanyPartnerStruct>) updateFn) {
    updateFn(_companyPartner ??= []);
  }

  bool hasCompanyPartner() => _companyPartner != null;

  // "company_promotional" field.
  List<CompanyStruct>? _companyPromotional;
  List<CompanyStruct> get companyPromotional => _companyPromotional ?? const [];
  set companyPromotional(List<CompanyStruct>? val) => _companyPromotional = val;

  void updateCompanyPromotional(Function(List<CompanyStruct>) updateFn) {
    updateFn(_companyPromotional ??= []);
  }

  bool hasCompanyPromotional() => _companyPromotional != null;

  // "company_shortly" field.
  List<CompanyStruct>? _companyShortly;
  List<CompanyStruct> get companyShortly => _companyShortly ?? const [];
  set companyShortly(List<CompanyStruct>? val) => _companyShortly = val;

  void updateCompanyShortly(Function(List<CompanyStruct>) updateFn) {
    updateFn(_companyShortly ??= []);
  }

  bool hasCompanyShortly() => _companyShortly != null;

  static HomeStruct fromMap(Map<String, dynamic> data) => HomeStruct(
        customer: data['customer'] is CustomerStruct
            ? data['customer']
            : CustomerStruct.maybeFromMap(data['customer']),
        category: getStructList(
          data['category'],
          CategoryStruct.fromMap,
        ),
        adsBanner: getStructList(
          data['ads_banner'],
          AdsStruct.fromMap,
        ),
        adsDelivery: getStructList(
          data['ads_delivery'],
          AdsStruct.fromMap,
        ),
        companyPartner: getStructList(
          data['company_partner'],
          CompanyPartnerStruct.fromMap,
        ),
        companyPromotional: getStructList(
          data['company_promotional'],
          CompanyStruct.fromMap,
        ),
        companyShortly: getStructList(
          data['company_shortly'],
          CompanyStruct.fromMap,
        ),
      );

  static HomeStruct? maybeFromMap(dynamic data) =>
      data is Map ? HomeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'customer': _customer?.toMap(),
        'category': _category?.map((e) => e.toMap()).toList(),
        'ads_banner': _adsBanner?.map((e) => e.toMap()).toList(),
        'ads_delivery': _adsDelivery?.map((e) => e.toMap()).toList(),
        'company_partner': _companyPartner?.map((e) => e.toMap()).toList(),
        'company_promotional':
            _companyPromotional?.map((e) => e.toMap()).toList(),
        'company_shortly': _companyShortly?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
        ),
        'category': serializeParam(
          _category,
          ParamType.DataStruct,
          isList: true,
        ),
        'ads_banner': serializeParam(
          _adsBanner,
          ParamType.DataStruct,
          isList: true,
        ),
        'ads_delivery': serializeParam(
          _adsDelivery,
          ParamType.DataStruct,
          isList: true,
        ),
        'company_partner': serializeParam(
          _companyPartner,
          ParamType.DataStruct,
          isList: true,
        ),
        'company_promotional': serializeParam(
          _companyPromotional,
          ParamType.DataStruct,
          isList: true,
        ),
        'company_shortly': serializeParam(
          _companyShortly,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static HomeStruct fromSerializableMap(Map<String, dynamic> data) =>
      HomeStruct(
        customer: deserializeStructParam(
          data['customer'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
        category: deserializeStructParam<CategoryStruct>(
          data['category'],
          ParamType.DataStruct,
          true,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
        adsBanner: deserializeStructParam<AdsStruct>(
          data['ads_banner'],
          ParamType.DataStruct,
          true,
          structBuilder: AdsStruct.fromSerializableMap,
        ),
        adsDelivery: deserializeStructParam<AdsStruct>(
          data['ads_delivery'],
          ParamType.DataStruct,
          true,
          structBuilder: AdsStruct.fromSerializableMap,
        ),
        companyPartner: deserializeStructParam<CompanyPartnerStruct>(
          data['company_partner'],
          ParamType.DataStruct,
          true,
          structBuilder: CompanyPartnerStruct.fromSerializableMap,
        ),
        companyPromotional: deserializeStructParam<CompanyStruct>(
          data['company_promotional'],
          ParamType.DataStruct,
          true,
          structBuilder: CompanyStruct.fromSerializableMap,
        ),
        companyShortly: deserializeStructParam<CompanyStruct>(
          data['company_shortly'],
          ParamType.DataStruct,
          true,
          structBuilder: CompanyStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'HomeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HomeStruct &&
        customer == other.customer &&
        listEquality.equals(category, other.category) &&
        listEquality.equals(adsBanner, other.adsBanner) &&
        listEquality.equals(adsDelivery, other.adsDelivery) &&
        listEquality.equals(companyPartner, other.companyPartner) &&
        listEquality.equals(companyPromotional, other.companyPromotional) &&
        listEquality.equals(companyShortly, other.companyShortly);
  }

  @override
  int get hashCode => const ListEquality().hash([
        customer,
        category,
        adsBanner,
        adsDelivery,
        companyPartner,
        companyPromotional,
        companyShortly
      ]);
}

HomeStruct createHomeStruct({
  CustomerStruct? customer,
}) =>
    HomeStruct(
      customer: customer ?? CustomerStruct(),
    );
