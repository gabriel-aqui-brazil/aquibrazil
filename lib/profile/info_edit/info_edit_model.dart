import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import '/index.dart';
import 'info_edit_widget.dart' show InfoEditWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfoEditModel extends FlutterFlowModel<InfoEditWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for INFORMAESADICIONAIS widget.
  FocusNode? informaesadicionaisFocusNode1;
  TextEditingController? informaesadicionaisTextController1;
  String? Function(BuildContext, String?)?
      informaesadicionaisTextController1Validator;
  // State field(s) for INFORMAESADICIONAIS widget.
  FocusNode? informaesadicionaisFocusNode2;
  TextEditingController? informaesadicionaisTextController2;
  String? Function(BuildContext, String?)?
      informaesadicionaisTextController2Validator;
  // Stores action output result for [Backend Call - API (Update customer)] action in Button widget.
  ApiCallResponse? apiResultl25;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    informaesadicionaisFocusNode1?.dispose();
    informaesadicionaisTextController1?.dispose();

    informaesadicionaisFocusNode2?.dispose();
    informaesadicionaisTextController2?.dispose();
  }
}
