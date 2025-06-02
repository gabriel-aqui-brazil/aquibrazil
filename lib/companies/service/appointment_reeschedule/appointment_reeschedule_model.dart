import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/actions/actions.dart' as action_blocks;
import '/backend/schema/structs/index.dart';
import 'appointment_reeschedule_widget.dart' show AppointmentReescheduleWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AppointmentReescheduleModel
    extends FlutterFlowModel<AppointmentReescheduleWidget> {
  ///  Local state fields for this component.

  int? hourSelected;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Appointment review)] action in Button widget.
  ApiCallResponse? apiCancelAppointmenet;
  // Stores action output result for [Backend Call - API (Appointment review)] action in Button widget.
  ApiCallResponse? apiAppointementResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
