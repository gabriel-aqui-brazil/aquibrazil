import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/index.dart';
import 'payment_method_delete_widget.dart' show PaymentMethodDeleteWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentMethodDeleteModel
    extends FlutterFlowModel<PaymentMethodDeleteWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Delete payment method)] action in Button widget.
  ApiCallResponse? deletePaymentMethod;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
