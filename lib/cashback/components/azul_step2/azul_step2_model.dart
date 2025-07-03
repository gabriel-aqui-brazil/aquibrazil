import '/auth/custom_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/cashback/components/azul_step1/azul_step1_widget.dart';
import '/cashback/components/azul_step3/azul_step3_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'azul_step2_widget.dart' show AzulStep2Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AzulStep2Model extends FlutterFlowModel<AzulStep2Widget> {
  ///  Local state fields for this component.

  bool hasCharacteres = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for CPFfield widget.
  FocusNode? cPFfieldFocusNode;
  TextEditingController? cPFfieldTextController;
  late MaskTextInputFormatter cPFfieldMask;
  String? Function(BuildContext, String?)? cPFfieldTextControllerValidator;
  // Stores action output result for [Custom Action - cpfValid] action in Button widget.
  bool? cpfIsValid;
  // Stores action output result for [Action Block - insertUserDocument] action in Button widget.
  bool? documentInsert;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cPFfieldFocusNode?.dispose();
    cPFfieldTextController?.dispose();
  }
}
