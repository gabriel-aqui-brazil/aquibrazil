// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiscountRuleStruct extends BaseStruct {
  DiscountRuleStruct({
    String? id,
    String? title,
    String? description,
  })  : _id = id,
        _title = title,
        _description = description;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  static DiscountRuleStruct fromMap(Map<String, dynamic> data) =>
      DiscountRuleStruct(
        id: data['id'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
      );

  static DiscountRuleStruct? maybeFromMap(dynamic data) => data is Map
      ? DiscountRuleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
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
      }.withoutNulls;

  static DiscountRuleStruct fromSerializableMap(Map<String, dynamic> data) =>
      DiscountRuleStruct(
        id: deserializeParam(
          data['id'],
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
      );

  @override
  String toString() => 'DiscountRuleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DiscountRuleStruct &&
        id == other.id &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([id, title, description]);
}

DiscountRuleStruct createDiscountRuleStruct({
  String? id,
  String? title,
  String? description,
}) =>
    DiscountRuleStruct(
      id: id,
      title: title,
      description: description,
    );
