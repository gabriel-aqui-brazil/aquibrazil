import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import 'notification_manage_widget.dart' show NotificationManageWidget;
import 'package:aquibrazil_library_oi8i5r/custom_code/actions/index.dart'
    as aquibrazil_library_oi8i5r_actions;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationManageModel
    extends FlutterFlowModel<NotificationManageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue1;
  // Stores action output result for [Backend Call - API (Update token fcm)] action in Switch widget.
  ApiCallResponse? apiResult6x7;
  // Stores action output result for [Custom Action - getFCMToken] action in Switch widget.
  String? token;
  // Stores action output result for [Backend Call - API (Update token fcm)] action in Switch widget.
  ApiCallResponse? apiResultxk1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for Switch widget.
  bool? switchValue4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
