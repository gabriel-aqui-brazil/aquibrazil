// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationStruct extends BaseStruct {
  NotificationStruct({
    String? header,
    String? content,
    int? createdAt,
  })  : _header = header,
        _content = content,
        _createdAt = createdAt;

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

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  static NotificationStruct fromMap(Map<String, dynamic> data) =>
      NotificationStruct(
        header: data['header'] as String?,
        content: data['content'] as String?,
        createdAt: castToType<int>(data['created_at']),
      );

  static NotificationStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'header': _header,
        'content': _content,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'header': serializeParam(
          _header,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
      }.withoutNulls;

  static NotificationStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotificationStruct(
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
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'NotificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationStruct &&
        header == other.header &&
        content == other.content &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([header, content, createdAt]);
}

NotificationStruct createNotificationStruct({
  String? header,
  String? content,
  int? createdAt,
}) =>
    NotificationStruct(
      header: header,
      content: content,
      createdAt: createdAt,
    );
