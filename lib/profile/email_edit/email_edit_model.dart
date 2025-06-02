import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import '/index.dart';
import 'email_edit_widget.dart' show EmailEditWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmailEditModel extends FlutterFlowModel<EmailEditWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EDITEMAIL widget.
  FocusNode? editemailFocusNode;
  TextEditingController? editemailTextController;
  String? Function(BuildContext, String?)? editemailTextControllerValidator;
  String? _editemailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'xnf0d6oa' /* E-mail obrigatório */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Edit customer email)] action in Button widget.
  ApiCallResponse? apiResulti6i;

  @override
  void initState(BuildContext context) {
    editemailTextControllerValidator = _editemailTextControllerValidator;
  }

  @override
  void dispose() {
    editemailFocusNode?.dispose();
    editemailTextController?.dispose();
  }
}
