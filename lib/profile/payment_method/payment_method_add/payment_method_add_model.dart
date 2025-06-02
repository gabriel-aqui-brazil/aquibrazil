import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'payment_method_add_widget.dart' show PaymentMethodAddWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentMethodAddModel extends FlutterFlowModel<PaymentMethodAddWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Payment method attach)] action in StripePaymentMethodWidget widget.
  ApiCallResponse? apiResultaa9;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
