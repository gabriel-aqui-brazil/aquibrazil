import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/order_in_progress/order_in_progress_widget.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/backend/schema/structs/index.dart';
import 'custom_appbar_widget.dart' show CustomAppbarWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomAppbarModel extends FlutterFlowModel<CustomAppbarWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get order)] action in CustomAppbar widget.
  ApiCallResponse? apiResultp5u;
  // Model for orderInProgress component.
  late OrderInProgressModel orderInProgressModel;

  @override
  void initState(BuildContext context) {
    orderInProgressModel = createModel(context, () => OrderInProgressModel());
  }

  @override
  void dispose() {
    orderInProgressModel.dispose();
  }
}
