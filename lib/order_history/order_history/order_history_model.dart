import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/companies/service/appointment_reeschedule/appointment_reeschedule_widget.dart';
import '/components/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/order_in_progress/order_in_progress_widget.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'order_history_widget.dart' show OrderHistoryWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class OrderHistoryModel extends FlutterFlowModel<OrderHistoryWidget> {
  ///  Local state fields for this page.

  Idioma? idioma;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Query order history)] action in orderHistory widget.
  ApiCallResponse? apiResult4xv;
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
