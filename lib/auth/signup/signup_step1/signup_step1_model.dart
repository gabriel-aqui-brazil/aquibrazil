import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'signup_step1_widget.dart' show SignupStep1Widget;
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

class SignupStep1Model extends FlutterFlowModel<SignupStep1Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - googleLoginAction] action in Container widget.
  dynamic? signupGoogle;
  // Stores action output result for [Backend Call - API (Login Signup social)] action in Container widget.
  ApiCallResponse? signupGoogleOutput;
  // Stores action output result for [Custom Action - appleLoginAction] action in Container widget.
  dynamic? appleSignup;
  // Stores action output result for [Backend Call - API (Login Signup social)] action in Container widget.
  ApiCallResponse? signupAppleOutput;
  // State field(s) for emailCadastro widget.
  FocusNode? emailCadastroFocusNode;
  TextEditingController? emailCadastroTextController;
  String? Function(BuildContext, String?)? emailCadastroTextControllerValidator;
  String? _emailCadastroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'osm1s0xw' /* E-mail obrigatório. */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'yy8kjpme' /* O e-mail não é válido. */,
      );
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (Signup request code email)] action in Button widget.
  ApiCallResponse? validateOutput;

  @override
  void initState(BuildContext context) {
    emailCadastroTextControllerValidator =
        _emailCadastroTextControllerValidator;
  }

  @override
  void dispose() {
    emailCadastroFocusNode?.dispose();
    emailCadastroTextController?.dispose();
  }
}
