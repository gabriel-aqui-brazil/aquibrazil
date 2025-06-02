import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/index.dart';
import 'complete_profile_widget.dart' show CompleteProfileWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompleteProfileModel extends FlutterFlowModel<CompleteProfileWidget> {
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
        'sua4b2nv' /* Campo obrigatório */,
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
        '72d8pwnj' /* Campo obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // Stores action output result for [Backend Call - API (Complete profile)] action in Button widget.
  ApiCallResponse? apiResultdib;

  @override
  void initState(BuildContext context) {
    primeiroNomeTextControllerValidator = _primeiroNomeTextControllerValidator;
    sobrenomeTextControllerValidator = _sobrenomeTextControllerValidator;
  }

  @override
  void dispose() {
    primeiroNomeFocusNode?.dispose();
    primeiroNomeTextController?.dispose();

    sobrenomeFocusNode?.dispose();
    sobrenomeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
