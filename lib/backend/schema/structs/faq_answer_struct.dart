// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FaqAnswerStruct extends BaseStruct {
  FaqAnswerStruct({
    String? id,
    String? faqId,
    String? title,
    String? description,
  })  : _id = id,
        _faqId = faqId,
        _title = title,
        _description = description;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "faq_id" field.
  String? _faqId;
  String get faqId => _faqId ?? '';
  set faqId(String? val) => _faqId = val;

  bool hasFaqId() => _faqId != null;

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

  static FaqAnswerStruct fromMap(Map<String, dynamic> data) => FaqAnswerStruct(
        id: data['id'] as String?,
        faqId: data['faq_id'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
      );

  static FaqAnswerStruct? maybeFromMap(dynamic data) => data is Map
      ? FaqAnswerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'faq_id': _faqId,
        'title': _title,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'faq_id': serializeParam(
          _faqId,
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

  static FaqAnswerStruct fromSerializableMap(Map<String, dynamic> data) =>
      FaqAnswerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        faqId: deserializeParam(
          data['faq_id'],
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
  String toString() => 'FaqAnswerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FaqAnswerStruct &&
        id == other.id &&
        faqId == other.faqId &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, faqId, title, description]);
}

FaqAnswerStruct createFaqAnswerStruct({
  String? id,
  String? faqId,
  String? title,
  String? description,
}) =>
    FaqAnswerStruct(
      id: id,
      faqId: faqId,
      title: title,
      description: description,
    );
