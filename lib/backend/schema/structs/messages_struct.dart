// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesStruct extends BaseStruct {
  MessagesStruct({
    String? id,
    int? createdAt,
    String? header,
    String? content,
  })  : _id = id,
        _createdAt = createdAt,
        _header = header,
        _content = content;

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

  // "header" field.
  String? _header;
  String get header => _header ?? '';
  set header(String? val) => _header = val;

  bool hasHeader() => _header != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  static MessagesStruct fromMap(Map<String, dynamic> data) => MessagesStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        header: data['header'] as String?,
        content: data['content'] as String?,
      );

  static MessagesStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessagesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'header': _header,
        'content': _content,
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
        'header': serializeParam(
          _header,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
      }.withoutNulls;

  static MessagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessagesStruct(
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
        header: deserializeParam(
          data['header'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MessagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessagesStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        header == other.header &&
        content == other.content;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, createdAt, header, content]);
}

MessagesStruct createMessagesStruct({
  String? id,
  int? createdAt,
  String? header,
  String? content,
}) =>
    MessagesStruct(
      id: id,
      createdAt: createdAt,
      header: header,
      content: content,
    );
