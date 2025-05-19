import '/auth/custom_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'mensagem_home_no_mensage_widget.dart' show MensagemHomeNoMensageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class MensagemHomeNoMensageModel
    extends FlutterFlowModel<MensagemHomeNoMensageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for INFORMAESADICIONAIS widget.
  FocusNode? informaesadicionaisFocusNode;
  TextEditingController? informaesadicionaisTextController;
  String? Function(BuildContext, String?)?
      informaesadicionaisTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    informaesadicionaisFocusNode?.dispose();
    informaesadicionaisTextController?.dispose();
  }
}
