import '/auth/signup/signup_step3_phone_country/signup_step3_phone_country_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'signup_step3_phone_widget.dart' show SignupStep3PhoneWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SignupStep3PhoneModel extends FlutterFlowModel<SignupStep3PhoneWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailCadastro widget.
  FocusNode? emailCadastroFocusNode;
  TextEditingController? emailCadastroTextController;
  String? Function(BuildContext, String?)? emailCadastroTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailCadastroFocusNode?.dispose();
    emailCadastroTextController?.dispose();
  }
}
