import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/companies/product/cart_product/select_prefered_time/select_prefered_time_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/membership/without_membership/membership_without/membership_without_widget.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/actions/actions.dart' as action_blocks;
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'cart5_widget.dart' show Cart5Widget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class Cart5Model extends FlutterFlowModel<Cart5Widget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Bottom Sheet - membershipWithout] action in Button widget.
  bool? bsDimss;
  // Stores action output result for [Backend Call - API (Order product)] action in Button widget.
  ApiCallResponse? apiResultd3r;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
