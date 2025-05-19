import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/cashback/components/azul_step3/azul_step3_widget.dart';
import '/cashback/components/azul_step5/azul_step5_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import 'azul_step4_widget.dart' show AzulStep4Widget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AzulStep4Model extends FlutterFlowModel<AzulStep4Widget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (POST Redeem azul points)] action in Button widget.
  ApiCallResponse? apiRendeemAzulResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
