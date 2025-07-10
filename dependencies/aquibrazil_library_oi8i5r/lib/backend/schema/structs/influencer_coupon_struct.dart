// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InfluencerCouponStruct extends BaseStruct {
  InfluencerCouponStruct({
    String? id,
    String? code,
    double? discount,
    InfluencerStruct? influencer,
    bool? mandatoryCpf,
  })  : _id = id,
        _code = code,
        _discount = discount,
        _influencer = influencer,
        _mandatoryCpf = mandatoryCpf;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  set discount(double? val) => _discount = val;

  void incrementDiscount(double amount) => discount = discount + amount;

  bool hasDiscount() => _discount != null;

  // "influencer" field.
  InfluencerStruct? _influencer;
  InfluencerStruct get influencer => _influencer ?? InfluencerStruct();
  set influencer(InfluencerStruct? val) => _influencer = val;

  void updateInfluencer(Function(InfluencerStruct) updateFn) {
    updateFn(_influencer ??= InfluencerStruct());
  }

  bool hasInfluencer() => _influencer != null;

  // "mandatory_cpf" field.
  bool? _mandatoryCpf;
  bool get mandatoryCpf => _mandatoryCpf ?? false;
  set mandatoryCpf(bool? val) => _mandatoryCpf = val;

  bool hasMandatoryCpf() => _mandatoryCpf != null;

  static InfluencerCouponStruct fromMap(Map<String, dynamic> data) =>
      InfluencerCouponStruct(
        id: data['id'] as String?,
        code: data['code'] as String?,
        discount: castToType<double>(data['discount']),
        influencer: data['influencer'] is InfluencerStruct
            ? data['influencer']
            : InfluencerStruct.maybeFromMap(data['influencer']),
        mandatoryCpf: data['mandatory_cpf'] as bool?,
      );

  static InfluencerCouponStruct? maybeFromMap(dynamic data) => data is Map
      ? InfluencerCouponStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'discount': _discount,
        'influencer': _influencer?.toMap(),
        'mandatory_cpf': _mandatoryCpf,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
        'influencer': serializeParam(
          _influencer,
          ParamType.DataStruct,
        ),
        'mandatory_cpf': serializeParam(
          _mandatoryCpf,
          ParamType.bool,
        ),
      }.withoutNulls;

  static InfluencerCouponStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      InfluencerCouponStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.double,
          false,
        ),
        influencer: deserializeStructParam(
          data['influencer'],
          ParamType.DataStruct,
          false,
          structBuilder: InfluencerStruct.fromSerializableMap,
        ),
        mandatoryCpf: deserializeParam(
          data['mandatory_cpf'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'InfluencerCouponStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InfluencerCouponStruct &&
        id == other.id &&
        code == other.code &&
        discount == other.discount &&
        influencer == other.influencer &&
        mandatoryCpf == other.mandatoryCpf;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, code, discount, influencer, mandatoryCpf]);
}

InfluencerCouponStruct createInfluencerCouponStruct({
  String? id,
  String? code,
  double? discount,
  InfluencerStruct? influencer,
  bool? mandatoryCpf,
}) =>
    InfluencerCouponStruct(
      id: id,
      code: code,
      discount: discount,
      influencer: influencer ?? InfluencerStruct(),
      mandatoryCpf: mandatoryCpf,
    );
