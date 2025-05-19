import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import 'help_contact_email_widget.dart' show HelpContactEmailWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class HelpContactEmailModel extends FlutterFlowModel<HelpContactEmailWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for InputName widget.
  FocusNode? inputNameFocusNode;
  TextEditingController? inputNameTextController;
  String? Function(BuildContext, String?)? inputNameTextControllerValidator;
  String? _inputNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ulghbdjy' /* Campo obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for InputEmail widget.
  FocusNode? inputEmailFocusNode;
  TextEditingController? inputEmailTextController;
  String? Function(BuildContext, String?)? inputEmailTextControllerValidator;
  String? _inputEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'clo916qe' /* Campo obrigatório */,
      );
    }

    return null;
  }

  // State field(s) for InputDescription widget.
  FocusNode? inputDescriptionFocusNode;
  TextEditingController? inputDescriptionTextController;
  String? Function(BuildContext, String?)?
      inputDescriptionTextControllerValidator;
  String? _inputDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ljf3vbhv' /* Campo obrigatório */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Faq email)] action in Button widget.
  ApiCallResponse? apiSendTicketResult;

  @override
  void initState(BuildContext context) {
    inputNameTextControllerValidator = _inputNameTextControllerValidator;
    inputEmailTextControllerValidator = _inputEmailTextControllerValidator;
    inputDescriptionTextControllerValidator =
        _inputDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    inputNameFocusNode?.dispose();
    inputNameTextController?.dispose();

    inputEmailFocusNode?.dispose();
    inputEmailTextController?.dispose();

    inputDescriptionFocusNode?.dispose();
    inputDescriptionTextController?.dispose();
  }
}
