// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiscountRuleStruct extends BaseStruct {
  DiscountRuleStruct({
    String? id,
    int? createdAt,
    String? pageId,
    String? title,
    String? description,
    String? updatedBy,
    bool? isDeleted,
    String? createdBy,
    int? updatedAt,
    int? deletedAt,
  })  : _id = id,
        _createdAt = createdAt,
        _pageId = pageId,
        _title = title,
        _description = description,
        _updatedBy = updatedBy,
        _isDeleted = isDeleted,
        _createdBy = createdBy,
        _updatedAt = updatedAt,
        _deletedAt = deletedAt;

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

  // "page_id" field.
  String? _pageId;
  String get pageId => _pageId ?? '';
  set pageId(String? val) => _pageId = val;

  bool hasPageId() => _pageId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "updated_by" field.
  String? _updatedBy;
  String get updatedBy => _updatedBy ?? '';
  set updatedBy(String? val) => _updatedBy = val;

  bool hasUpdatedBy() => _updatedBy != null;

  // "is_deleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  set isDeleted(bool? val) => _isDeleted = val;

  bool hasIsDeleted() => _isDeleted != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  set createdBy(String? val) => _createdBy = val;

  bool hasCreatedBy() => _createdBy != null;

  // "updated_at" field.
  int? _updatedAt;
  int get updatedAt => _updatedAt ?? 0;
  set updatedAt(int? val) => _updatedAt = val;

  void incrementUpdatedAt(int amount) => updatedAt = updatedAt + amount;

  bool hasUpdatedAt() => _updatedAt != null;

  // "deleted_at" field.
  int? _deletedAt;
  int get deletedAt => _deletedAt ?? 0;
  set deletedAt(int? val) => _deletedAt = val;

  void incrementDeletedAt(int amount) => deletedAt = deletedAt + amount;

  bool hasDeletedAt() => _deletedAt != null;

  static DiscountRuleStruct fromMap(Map<String, dynamic> data) =>
      DiscountRuleStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        pageId: data['page_id'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        updatedBy: data['updated_by'] as String?,
        isDeleted: data['is_deleted'] as bool?,
        createdBy: data['created_by'] as String?,
        updatedAt: castToType<int>(data['updated_at']),
        deletedAt: castToType<int>(data['deleted_at']),
      );

  static DiscountRuleStruct? maybeFromMap(dynamic data) => data is Map
      ? DiscountRuleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'page_id': _pageId,
        'title': _title,
        'description': _description,
        'updated_by': _updatedBy,
        'is_deleted': _isDeleted,
        'created_by': _createdBy,
        'updated_at': _updatedAt,
        'deleted_at': _deletedAt,
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
        'page_id': serializeParam(
          _pageId,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'updated_by': serializeParam(
          _updatedBy,
          ParamType.String,
        ),
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
        'created_by': serializeParam(
          _createdBy,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.int,
        ),
        'deleted_at': serializeParam(
          _deletedAt,
          ParamType.int,
        ),
      }.withoutNulls;

  static DiscountRuleStruct fromSerializableMap(Map<String, dynamic> data) =>
      DiscountRuleStruct(
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
        pageId: deserializeParam(
          data['page_id'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        updatedBy: deserializeParam(
          data['updated_by'],
          ParamType.String,
          false,
        ),
        isDeleted: deserializeParam(
          data['is_deleted'],
          ParamType.bool,
          false,
        ),
        createdBy: deserializeParam(
          data['created_by'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.int,
          false,
        ),
        deletedAt: deserializeParam(
          data['deleted_at'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DiscountRuleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DiscountRuleStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        pageId == other.pageId &&
        title == other.title &&
        description == other.description &&
        updatedBy == other.updatedBy &&
        isDeleted == other.isDeleted &&
        createdBy == other.createdBy &&
        updatedAt == other.updatedAt &&
        deletedAt == other.deletedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        pageId,
        title,
        description,
        updatedBy,
        isDeleted,
        createdBy,
        updatedAt,
        deletedAt
      ]);
}

DiscountRuleStruct createDiscountRuleStruct({
  String? id,
  int? createdAt,
  String? pageId,
  String? title,
  String? description,
  String? updatedBy,
  bool? isDeleted,
  String? createdBy,
  int? updatedAt,
  int? deletedAt,
}) =>
    DiscountRuleStruct(
      id: id,
      createdAt: createdAt,
      pageId: pageId,
      title: title,
      description: description,
      updatedBy: updatedBy,
      isDeleted: isDeleted,
      createdBy: createdBy,
      updatedAt: updatedAt,
      deletedAt: deletedAt,
    );
