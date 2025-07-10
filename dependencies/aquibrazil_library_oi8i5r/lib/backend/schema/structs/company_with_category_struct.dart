// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyWithCategoryStruct extends BaseStruct {
  CompanyWithCategoryStruct({
    List<CategoryStruct>? companyCategory,
    List<CompanyStruct>? company,
    CustomerStruct? customer,
  })  : _companyCategory = companyCategory,
        _company = company,
        _customer = customer;

  // "company_category" field.
  List<CategoryStruct>? _companyCategory;
  List<CategoryStruct> get companyCategory => _companyCategory ?? const [];
  set companyCategory(List<CategoryStruct>? val) => _companyCategory = val;

  void updateCompanyCategory(Function(List<CategoryStruct>) updateFn) {
    updateFn(_companyCategory ??= []);
  }

  bool hasCompanyCategory() => _companyCategory != null;

  // "company" field.
  List<CompanyStruct>? _company;
  List<CompanyStruct> get company => _company ?? const [];
  set company(List<CompanyStruct>? val) => _company = val;

  void updateCompany(Function(List<CompanyStruct>) updateFn) {
    updateFn(_company ??= []);
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

  static CompanyWithCategoryStruct fromMap(Map<String, dynamic> data) =>
      CompanyWithCategoryStruct(
        companyCategory: getStructList(
          data['company_category'],
          CategoryStruct.fromMap,
        ),
        company: getStructList(
          data['company'],
          CompanyStruct.fromMap,
        ),
        customer: data['customer'] is CustomerStruct
            ? data['customer']
            : CustomerStruct.maybeFromMap(data['customer']),
      );

  static CompanyWithCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? CompanyWithCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'company_category': _companyCategory?.map((e) => e.toMap()).toList(),
        'company': _company?.map((e) => e.toMap()).toList(),
        'customer': _customer?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'company_category': serializeParam(
          _companyCategory,
          ParamType.DataStruct,
          isList: true,
        ),
        'company': serializeParam(
          _company,
          ParamType.DataStruct,
          isList: true,
        ),
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CompanyWithCategoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CompanyWithCategoryStruct(
        companyCategory: deserializeStructParam<CategoryStruct>(
          data['company_category'],
          ParamType.DataStruct,
          true,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
        company: deserializeStructParam<CompanyStruct>(
          data['company'],
          ParamType.DataStruct,
          true,
          structBuilder: CompanyStruct.fromSerializableMap,
        ),
        customer: deserializeStructParam(
          data['customer'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CompanyWithCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CompanyWithCategoryStruct &&
        listEquality.equals(companyCategory, other.companyCategory) &&
        listEquality.equals(company, other.company) &&
        customer == other.customer;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([companyCategory, company, customer]);
}

CompanyWithCategoryStruct createCompanyWithCategoryStruct({
  CustomerStruct? customer,
}) =>
    CompanyWithCategoryStruct(
      customer: customer ?? CustomerStruct(),
    );
