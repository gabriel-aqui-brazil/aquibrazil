// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoriteCompanyStruct extends BaseStruct {
  FavoriteCompanyStruct({
    String? id,
    CompanyStruct? company,
  })  : _id = id,
        _company = company;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "company" field.
  CompanyStruct? _company;
  CompanyStruct get company => _company ?? CompanyStruct();
  set company(CompanyStruct? val) => _company = val;

  void updateCompany(Function(CompanyStruct) updateFn) {
    updateFn(_company ??= CompanyStruct());
  }

  bool hasCompany() => _company != null;

  static FavoriteCompanyStruct fromMap(Map<String, dynamic> data) =>
      FavoriteCompanyStruct(
        id: data['id'] as String?,
        company: data['company'] is CompanyStruct
            ? data['company']
            : CompanyStruct.maybeFromMap(data['company']),
      );

  static FavoriteCompanyStruct? maybeFromMap(dynamic data) => data is Map
      ? FavoriteCompanyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'company': _company?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'company': serializeParam(
          _company,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static FavoriteCompanyStruct fromSerializableMap(Map<String, dynamic> data) =>
      FavoriteCompanyStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
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
  String toString() => 'FavoriteCompanyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FavoriteCompanyStruct &&
        id == other.id &&
        company == other.company;
  }

  @override
  int get hashCode => const ListEquality().hash([id, company]);
}

FavoriteCompanyStruct createFavoriteCompanyStruct({
  String? id,
  CompanyStruct? company,
}) =>
    FavoriteCompanyStruct(
      id: id,
      company: company ?? CompanyStruct(),
    );
