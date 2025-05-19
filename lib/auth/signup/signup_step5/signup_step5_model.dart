import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/actions/actions.dart' as action_blocks;
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'signup_step5_widget.dart' show SignupStep5Widget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupStep5Model extends FlutterFlowModel<SignupStep5Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PrimeiroNome widget.
  FocusNode? primeiroNomeFocusNode;
  TextEditingController? primeiroNomeTextController;
  String? Function(BuildContext, String?)? primeiroNomeTextControllerValidator;
  String? _primeiroNomeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'sspmwopz' /* Campo obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for sobrenome widget.
  FocusNode? sobrenomeFocusNode;
  TextEditingController? sobrenomeTextController;
  String? Function(BuildContext, String?)? sobrenomeTextControllerValidator;
  String? _sobrenomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        't8y8ydc8' /* Campo obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  String? _senhaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nslxxfat' /* Campo obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for repitaSenha widget.
  FocusNode? repitaSenhaFocusNode;
  TextEditingController? repitaSenhaTextController;
  late bool repitaSenhaVisibility;
  String? Function(BuildContext, String?)? repitaSenhaTextControllerValidator;
  String? _repitaSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'evxao9pr' /* Campo obrigatório */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Signup)] action in Button widget.
  ApiCallResponse? signUpOutput;

  @override
  void initState(BuildContext context) {
    primeiroNomeTextControllerValidator = _primeiroNomeTextControllerValidator;
    sobrenomeTextControllerValidator = _sobrenomeTextControllerValidator;
    senhaVisibility = false;
    senhaTextControllerValidator = _senhaTextControllerValidator;
    repitaSenhaVisibility = false;
    repitaSenhaTextControllerValidator = _repitaSenhaTextControllerValidator;
  }

  @override
  void dispose() {
    primeiroNomeFocusNode?.dispose();
    primeiroNomeTextController?.dispose();

    sobrenomeFocusNode?.dispose();
    sobrenomeTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    repitaSenhaFocusNode?.dispose();
    repitaSenhaTextController?.dispose();
  }
}
