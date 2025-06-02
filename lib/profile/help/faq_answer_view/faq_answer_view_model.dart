import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'faq_answer_view_widget.dart' show FaqAnswerViewWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FaqAnswerViewModel extends FlutterFlowModel<FaqAnswerViewWidget> {
  ///  Local state fields for this page.

  bool isUnlike = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Faq feedback)] action in IconButton widget.
  ApiCallResponse? apiResult194Copy;
  // Stores action output result for [Backend Call - API (Faq feedback)] action in IconButton widget.
  ApiCallResponse? apiResult194;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
