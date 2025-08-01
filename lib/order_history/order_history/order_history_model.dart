import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/companies/service/appointment_reeschedule/appointment_reeschedule_widget.dart';
import '/components/custom_appbar/custom_appbar_widget.dart';
import '/components/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/order_history/order_rating/order_rating_widget.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/actions/actions.dart' as action_blocks;
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
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class OrderHistoryModel extends FlutterFlowModel<OrderHistoryWidget> {
  ///  Local state fields for this page.

  String? filter;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Query order history)] action in orderHistory widget.
  ApiCallResponse? apiResult4xv;
  // Model for CustomAppbar component.
  late CustomAppbarModel customAppbarModel;

  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
  }

  @override
  void dispose() {
    customAppbarModel.dispose();
  }
}
