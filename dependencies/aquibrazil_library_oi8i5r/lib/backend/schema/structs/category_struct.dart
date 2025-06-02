// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryStruct extends BaseStruct {
  CategoryStruct({
    String? id,
    int? createdAt,
    String? parentId,
    String? name,
    String? description,
    String? categoryPhotoUrl,
    String? nameEn,
    String? nameEs,
  })  : _id = id,
        _createdAt = createdAt,
        _parentId = parentId,
        _name = name,
        _description = description,
        _categoryPhotoUrl = categoryPhotoUrl,
        _nameEn = nameEn,
        _nameEs = nameEs;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "parent_id" field.
  String? _parentId;
  String get parentId => _parentId ?? '';
  set parentId(String? val) => _parentId = val;

  bool hasParentId() => _parentId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "category_photo_url" field.
  String? _categoryPhotoUrl;
  String get categoryPhotoUrl => _categoryPhotoUrl ?? '';
  set categoryPhotoUrl(String? val) => _categoryPhotoUrl = val;

  bool hasCategoryPhotoUrl() => _categoryPhotoUrl != null;

  // "name_en" field.
  String? _nameEn;
  String get nameEn => _nameEn ?? '';
  set nameEn(String? val) => _nameEn = val;

  bool hasNameEn() => _nameEn != null;

  // "name_es" field.
  String? _nameEs;
  String get nameEs => _nameEs ?? '';
  set nameEs(String? val) => _nameEs = val;

  bool hasNameEs() => _nameEs != null;

  static CategoryStruct fromMap(Map<String, dynamic> data) => CategoryStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        parentId: data['parent_id'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        categoryPhotoUrl: data['category_photo_url'] as String?,
        nameEn: data['name_en'] as String?,
        nameEs: data['name_es'] as String?,
      );

  static CategoryStruct? maybeFromMap(dynamic data) =>
      data is Map ? CategoryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'parent_id': _parentId,
        'name': _name,
        'description': _description,
        'category_photo_url': _categoryPhotoUrl,
        'name_en': _nameEn,
        'name_es': _nameEs,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'parent_id': serializeParam(
          _parentId,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'category_photo_url': serializeParam(
          _categoryPhotoUrl,
          ParamType.String,
        ),
        'name_en': serializeParam(
          _nameEn,
          ParamType.String,
        ),
        'name_es': serializeParam(
          _nameEs,
          ParamType.String,
        ),
      }.withoutNulls;

  static CategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        parentId: deserializeParam(
          data['parent_id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        categoryPhotoUrl: deserializeParam(
          data['category_photo_url'],
          ParamType.String,
          false,
        ),
        nameEn: deserializeParam(
          data['name_en'],
          ParamType.String,
          false,
        ),
        nameEs: deserializeParam(
          data['name_es'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoryStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        parentId == other.parentId &&
        name == other.name &&
        description == other.description &&
        categoryPhotoUrl == other.categoryPhotoUrl &&
        nameEn == other.nameEn &&
        nameEs == other.nameEs;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        parentId,
        name,
        description,
        categoryPhotoUrl,
        nameEn,
        nameEs
      ]);
}

CategoryStruct createCategoryStruct({
  String? id,
  int? createdAt,
  String? parentId,
  String? name,
  String? description,
  String? categoryPhotoUrl,
  String? nameEn,
  String? nameEs,
}) =>
    CategoryStruct(
      id: id,
      createdAt: createdAt,
      parentId: parentId,
      name: name,
      description: description,
      categoryPhotoUrl: categoryPhotoUrl,
      nameEn: nameEn,
      nameEs: nameEs,
    );
