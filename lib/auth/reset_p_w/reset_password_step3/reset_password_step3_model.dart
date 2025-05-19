import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'reset_password_step3_widget.dart' show ResetPasswordStep3Widget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResetPasswordStep3Model
    extends FlutterFlowModel<ResetPasswordStep3Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for sobrenome widget.
  FocusNode? sobrenomeFocusNode1;
  TextEditingController? sobrenomeTextController1;
  late bool sobrenomeVisibility1;
  String? Function(BuildContext, String?)? sobrenomeTextController1Validator;
  String? _sobrenomeTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9hx8t4q2' /* Campo obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for sobrenome widget.
  FocusNode? sobrenomeFocusNode2;
  TextEditingController? sobrenomeTextController2;
  late bool sobrenomeVisibility2;
  String? Function(BuildContext, String?)? sobrenomeTextController2Validator;
  String? _sobrenomeTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fhwru753' /* Campo obrigatório */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Update password)] action in Button widget.
  ApiCallResponse? updatePasswordResponse;

  @override
  void initState(BuildContext context) {
    sobrenomeVisibility1 = false;
    sobrenomeTextController1Validator = _sobrenomeTextController1Validator;
    sobrenomeVisibility2 = false;
    sobrenomeTextController2Validator = _sobrenomeTextController2Validator;
  }

  @override
  void dispose() {
    sobrenomeFocusNode1?.dispose();
    sobrenomeTextController1?.dispose();

    sobrenomeFocusNode2?.dispose();
    sobrenomeTextController2?.dispose();
  }
}
