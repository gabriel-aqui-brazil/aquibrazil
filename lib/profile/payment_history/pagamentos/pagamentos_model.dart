import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/profile/payment_history/edit_card/edit_card_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'pagamentos_widget.dart' show PagamentosWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class PagamentosModel extends FlutterFlowModel<PagamentosWidget> {
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
