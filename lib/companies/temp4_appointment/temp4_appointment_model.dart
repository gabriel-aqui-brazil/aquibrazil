import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/companies/service/contain_item_selected_cart/contain_item_selected_cart_widget.dart';
import '/companies/service/contain_item_service_cart/contain_item_service_cart_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'temp4_appointment_widget.dart' show Temp4AppointmentWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class Temp4AppointmentModel extends FlutterFlowModel<Temp4AppointmentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // Stores action output result for [Bottom Sheet - containItemSelectedCart] action in Button widget.
  bool? actionService;
  // Stores action output result for [Bottom Sheet - containItemServiceCart] action in Button widget.
  bool? updateService;
  // Stores action output result for [Backend Call - API (Query product of service)] action in Button widget.
  ApiCallResponse? product;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
