// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderStruct extends BaseStruct {
  OrderStruct({
    String? id,
    int? number,
    CompanyStruct? company,
  })  : _id = id,
        _number = number,
        _company = company;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  set number(int? val) => _number = val;

  void incrementNumber(int amount) => number = number + amount;

  bool hasNumber() => _number != null;

  // "company" field.
  CompanyStruct? _company;
  CompanyStruct get company => _company ?? CompanyStruct();
  set company(CompanyStruct? val) => _company = val;

  void updateCompany(Function(CompanyStruct) updateFn) {
    updateFn(_company ??= CompanyStruct());
  }

  bool hasCompany() => _company != null;

  static OrderStruct fromMap(Map<String, dynamic> data) => OrderStruct(
        id: data['id'] as String?,
        number: castToType<int>(data['number']),
        company: data['company'] is CompanyStruct
            ? data['company']
            : CompanyStruct.maybeFromMap(data['company']),
      );

  static OrderStruct? maybeFromMap(dynamic data) =>
      data is Map ? OrderStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'number': _number,
        'company': _company?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.int,
        ),
        'company': serializeParam(
          _company,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static OrderStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.int,
          false,
        ),
        company: deserializeStructParam(
          data['company'],
          ParamType.DataStruct,
          false,
          structBuilder: CompanyStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OrderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderStruct &&
        id == other.id &&
        number == other.number &&
        company == other.company;
  }

  @override
  int get hashCode => const ListEquality().hash([id, number, company]);
}

OrderStruct createOrderStruct({
  String? id,
  int? number,
  CompanyStruct? company,
}) =>
    OrderStruct(
      id: id,
      number: number,
      company: company ?? CompanyStruct(),
    );
