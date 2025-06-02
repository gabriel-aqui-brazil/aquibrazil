import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'avaliar_atendimento_widget.dart' show AvaliarAtendimentoWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AvaliarAtendimentoModel
    extends FlutterFlowModel<AvaliarAtendimentoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
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
