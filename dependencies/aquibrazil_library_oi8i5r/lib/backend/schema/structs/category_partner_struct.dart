// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryPartnerStruct extends BaseStruct {
  CategoryPartnerStruct({
    String? id,
    String? name,
    String? url,
    String? nameEs,
    String? nameEn,
  })  : _id = id,
        _name = name,
        _url = url,
        _nameEs = nameEs,
        _nameEn = nameEn;

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

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  // "name_es" field.
  String? _nameEs;
  String get nameEs => _nameEs ?? '';
  set nameEs(String? val) => _nameEs = val;

  bool hasNameEs() => _nameEs != null;

  // "name_en" field.
  String? _nameEn;
  String get nameEn => _nameEn ?? '';
  set nameEn(String? val) => _nameEn = val;

  bool hasNameEn() => _nameEn != null;

  static CategoryPartnerStruct fromMap(Map<String, dynamic> data) =>
      CategoryPartnerStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        url: data['url'] as String?,
        nameEs: data['name_es'] as String?,
        nameEn: data['name_en'] as String?,
      );

  static CategoryPartnerStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoryPartnerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'url': _url,
        'name_es': _nameEs,
        'name_en': _nameEn,
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
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'name_es': serializeParam(
          _nameEs,
          ParamType.String,
        ),
        'name_en': serializeParam(
          _nameEn,
          ParamType.String,
        ),
      }.withoutNulls;

  static CategoryPartnerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryPartnerStruct(
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
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        nameEs: deserializeParam(
          data['name_es'],
          ParamType.String,
          false,
        ),
        nameEn: deserializeParam(
          data['name_en'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CategoryPartnerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoryPartnerStruct &&
        id == other.id &&
        name == other.name &&
        url == other.url &&
        nameEs == other.nameEs &&
        nameEn == other.nameEn;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, url, nameEs, nameEn]);
}

CategoryPartnerStruct createCategoryPartnerStruct({
  String? id,
  String? name,
  String? url,
  String? nameEs,
  String? nameEn,
}) =>
    CategoryPartnerStruct(
      id: id,
      name: name,
      url: url,
      nameEs: nameEs,
      nameEn: nameEn,
    );
