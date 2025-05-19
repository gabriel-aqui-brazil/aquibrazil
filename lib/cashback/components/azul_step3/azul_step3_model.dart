import '/cashback/components/azul_step2/azul_step2_widget.dart';
import '/cashback/components/azul_step4/azul_step4_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'azul_step3_widget.dart' show AzulStep3Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AzulStep3Model extends FlutterFlowModel<AzulStep3Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for pontos widget.
  FocusNode? pontosFocusNode;
  TextEditingController? pontosTextController;
  String? Function(BuildContext, String?)? pontosTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pontosFocusNode?.dispose();
    pontosTextController?.dispose();
  }
}
