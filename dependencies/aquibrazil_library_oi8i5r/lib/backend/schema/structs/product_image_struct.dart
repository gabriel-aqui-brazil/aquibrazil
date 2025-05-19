// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductImageStruct extends BaseStruct {
  ProductImageStruct({
    String? url,
  }) : _url = url;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  static ProductImageStruct fromMap(Map<String, dynamic> data) =>
      ProductImageStruct(
        url: data['url'] as String?,
      );

  static ProductImageStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductImageStruct.fromMap(data.cast<String, dynamic>())
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

  static ProductImageStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductImageStruct(
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductImageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductImageStruct && url == other.url;
  }

  @override
  int get hashCode => const ListEquality().hash([url]);
}

ProductImageStruct createProductImageStruct({
  String? url,
}) =>
    ProductImageStruct(
      url: url,
    );
