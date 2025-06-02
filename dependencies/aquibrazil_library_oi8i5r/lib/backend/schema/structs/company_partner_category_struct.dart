// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyPartnerCategoryStruct extends BaseStruct {
  CompanyPartnerCategoryStruct({
    List<CompanyPartnerStruct>? companyPartner,
    List<CategoryPartnerStruct>? categoryPartner,
    CustomerStruct? customer,
  })  : _companyPartner = companyPartner,
        _categoryPartner = categoryPartner,
        _customer = customer;

  // "company_partner" field.
  List<CompanyPartnerStruct>? _companyPartner;
  List<CompanyPartnerStruct> get companyPartner => _companyPartner ?? const [];
  set companyPartner(List<CompanyPartnerStruct>? val) => _companyPartner = val;

  void updateCompanyPartner(Function(List<CompanyPartnerStruct>) updateFn) {
    updateFn(_companyPartner ??= []);
  }

  bool hasCompanyPartner() => _companyPartner != null;

  // "category_partner" field.
  List<CategoryPartnerStruct>? _categoryPartner;
  List<CategoryPartnerStruct> get categoryPartner =>
      _categoryPartner ?? const [];
  set categoryPartner(List<CategoryPartnerStruct>? val) =>
      _categoryPartner = val;

  void updateCategoryPartner(Function(List<CategoryPartnerStruct>) updateFn) {
    updateFn(_categoryPartner ??= []);
  }

  bool hasCategoryPartner() => _categoryPartner != null;

  // "customer" field.
  CustomerStruct? _customer;
  CustomerStruct get customer => _customer ?? CustomerStruct();
  set customer(CustomerStruct? val) => _customer = val;

  void updateCustomer(Function(CustomerStruct) updateFn) {
    updateFn(_customer ??= CustomerStruct());
  }

  bool hasCustomer() => _customer != null;

  static CompanyPartnerCategoryStruct fromMap(Map<String, dynamic> data) =>
      CompanyPartnerCategoryStruct(
        companyPartner: getStructList(
          data['company_partner'],
          CompanyPartnerStruct.fromMap,
        ),
        categoryPartner: getStructList(
          data['category_partner'],
          CategoryPartnerStruct.fromMap,
        ),
        customer: data['customer'] is CustomerStruct
            ? data['customer']
            : CustomerStruct.maybeFromMap(data['customer']),
      );

  static CompanyPartnerCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? CompanyPartnerCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'company_partner': _companyPartner?.map((e) => e.toMap()).toList(),
        'category_partner': _categoryPartner?.map((e) => e.toMap()).toList(),
        'customer': _customer?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'company_partner': serializeParam(
          _companyPartner,
          ParamType.DataStruct,
          isList: true,
        ),
        'category_partner': serializeParam(
          _categoryPartner,
          ParamType.DataStruct,
          isList: true,
        ),
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CompanyPartnerCategoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CompanyPartnerCategoryStruct(
        companyPartner: deserializeStructParam<CompanyPartnerStruct>(
          data['company_partner'],
          ParamType.DataStruct,
          true,
          structBuilder: CompanyPartnerStruct.fromSerializableMap,
        ),
        categoryPartner: deserializeStructParam<CategoryPartnerStruct>(
          data['category_partner'],
          ParamType.DataStruct,
          true,
          structBuilder: CategoryPartnerStruct.fromSerializableMap,
        ),
        customer: deserializeStructParam(
          data['customer'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CompanyPartnerCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CompanyPartnerCategoryStruct &&
        listEquality.equals(companyPartner, other.companyPartner) &&
        listEquality.equals(categoryPartner, other.categoryPartner) &&
        customer == other.customer;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([companyPartner, categoryPartner, customer]);
}

CompanyPartnerCategoryStruct createCompanyPartnerCategoryStruct({
  CustomerStruct? customer,
}) =>
    CompanyPartnerCategoryStruct(
      customer: customer ?? CustomerStruct(),
    );
