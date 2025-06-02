// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembershipCheckoutStruct extends BaseStruct {
  MembershipCheckoutStruct({
    double? subtotal,
    double? discount,
    double? taxAndService,
    double? total,
  })  : _subtotal = subtotal,
        _discount = discount,
        _taxAndService = taxAndService,
        _total = total;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  set subtotal(double? val) => _subtotal = val;

  void incrementSubtotal(double amount) => subtotal = subtotal + amount;

  bool hasSubtotal() => _subtotal != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  set discount(double? val) => _discount = val;

  void incrementDiscount(double amount) => discount = discount + amount;

  bool hasDiscount() => _discount != null;

  // "tax_and_service" field.
  double? _taxAndService;
  double get taxAndService => _taxAndService ?? 0.0;
  set taxAndService(double? val) => _taxAndService = val;

  void incrementTaxAndService(double amount) =>
      taxAndService = taxAndService + amount;

  bool hasTaxAndService() => _taxAndService != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;

  void incrementTotal(double amount) => total = total + amount;

  bool hasTotal() => _total != null;

  static MembershipCheckoutStruct fromMap(Map<String, dynamic> data) =>
      MembershipCheckoutStruct(
        subtotal: castToType<double>(data['subtotal']),
        discount: castToType<double>(data['discount']),
        taxAndService: castToType<double>(data['tax_and_service']),
        total: castToType<double>(data['total']),
      );

  static MembershipCheckoutStruct? maybeFromMap(dynamic data) => data is Map
      ? MembershipCheckoutStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'subtotal': _subtotal,
        'discount': _discount,
        'tax_and_service': _taxAndService,
        'total': _total,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'subtotal': serializeParam(
          _subtotal,
          ParamType.double,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
        'tax_and_service': serializeParam(
          _taxAndService,
          ParamType.double,
        ),
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
      }.withoutNulls;

  static MembershipCheckoutStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MembershipCheckoutStruct(
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.double,
          false,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.double,
          false,
        ),
        taxAndService: deserializeParam(
          data['tax_and_service'],
          ParamType.double,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'MembershipCheckoutStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MembershipCheckoutStruct &&
        subtotal == other.subtotal &&
        discount == other.discount &&
        taxAndService == other.taxAndService &&
        total == other.total;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([subtotal, discount, taxAndService, total]);
}

MembershipCheckoutStruct createMembershipCheckoutStruct({
  double? subtotal,
  double? discount,
  double? taxAndService,
  double? total,
}) =>
    MembershipCheckoutStruct(
      subtotal: subtotal,
      discount: discount,
      taxAndService: taxAndService,
      total: total,
    );
