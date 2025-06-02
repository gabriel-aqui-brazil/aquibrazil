import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'order_details_service_reeschedule_widget.dart'
    show OrderDetailsServiceReescheduleWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class OrderDetailsServiceReescheduleModel
    extends FlutterFlowModel<OrderDetailsServiceReescheduleWidget> {
  ///  State fields for stateful widgets in this component.

  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (Appointment reeschedule)] action in Button widget.
  ApiCallResponse? apiResult23f;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
