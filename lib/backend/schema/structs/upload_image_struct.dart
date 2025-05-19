// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UploadImageStruct extends BaseStruct {
  UploadImageStruct({
    String? url,
  }) : _url = url;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  static UploadImageStruct fromMap(Map<String, dynamic> data) =>
      UploadImageStruct(
        url: data['url'] as String?,
      );

  static UploadImageStruct? maybeFromMap(dynamic data) => data is Map
      ? UploadImageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'url': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static UploadImageStruct fromSerializableMap(Map<String, dynamic> data) =>
      UploadImageStruct(
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UploadImageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UploadImageStruct && url == other.url;
  }

  @override
  int get hashCode => const ListEquality().hash([url]);
}

UploadImageStruct createUploadImageStruct({
  String? url,
}) =>
    UploadImageStruct(
      url: url,
    );
