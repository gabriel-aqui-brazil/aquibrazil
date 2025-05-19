import '/auth/signup/signup_step3_phone_country/signup_step3_phone_country_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'signup_step3_widget.dart' show SignupStep3Widget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SignupStep3Model extends FlutterFlowModel<SignupStep3Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCelular widget.
  FocusNode? txtCelularFocusNode;
  TextEditingController? txtCelularTextController;
  String? Function(BuildContext, String?)? txtCelularTextControllerValidator;
  // Stores action output result for [Backend Call - API (Signup request code sms)] action in Button widget.
  ApiCallResponse? smsOutput;
  // Stores action output result for [Backend Call - API (Signup request code whatsapp)] action in Button widget.
  ApiCallResponse? whatsappOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCelularFocusNode?.dispose();
    txtCelularTextController?.dispose();
  }
}
