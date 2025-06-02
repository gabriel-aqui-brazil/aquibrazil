import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:aquibrazil_library_oi8i5r/custom_code/actions/index.dart'
    as aquibrazil_library_oi8i5r_actions;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getFCMToken] action in login widget.
  String? fcm;
  // State field(s) for emailCadastro widget.
  FocusNode? emailCadastroFocusNode;
  TextEditingController? emailCadastroTextController;
  String? Function(BuildContext, String?)? emailCadastroTextControllerValidator;
  // State field(s) for senhaCadastro widget.
  FocusNode? senhaCadastroFocusNode;
  TextEditingController? senhaCadastroTextController;
  late bool senhaCadastroVisibility;
  String? Function(BuildContext, String?)? senhaCadastroTextControllerValidator;
  // Stores action output result for [Backend Call - API (Login)] action in ButtonEntrar widget.
  ApiCallResponse? authLogin;
  // Stores action output result for [Custom Action - googleLoginAction] action in Container widget.
  dynamic? loginGoogle;
  // Stores action output result for [Backend Call - API (Login Signup social)] action in Container widget.
  ApiCallResponse? loginGoogleOutput;
  // Stores action output result for [Custom Action - appleLoginAction] action in Container widget.
  dynamic? appleLogin;
  // Stores action output result for [Backend Call - API (Login Signup social)] action in Container widget.
  ApiCallResponse? loginAppleOutput;

  @override
  void initState(BuildContext context) {
    senhaCadastroVisibility = false;
  }

  @override
  void dispose() {
    emailCadastroFocusNode?.dispose();
    emailCadastroTextController?.dispose();

    senhaCadastroFocusNode?.dispose();
    senhaCadastroTextController?.dispose();
  }
}
