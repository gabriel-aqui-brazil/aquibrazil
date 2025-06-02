import '/companies/product/cart_product/tip/tip_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'cart3_widget.dart' show Cart3Widget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Cart3Model extends FlutterFlowModel<Cart3Widget> {
  ///  Local state fields for this component.

  int tip = 0;

  ///  State fields for stateful widgets in this component.

  // Model for tip component.
  late TipModel tipModel1;
  // Model for tip component.
  late TipModel tipModel2;
  // Model for tip component.
  late TipModel tipModel3;
  // Model for tip component.
  late TipModel tipModel4;

  @override
  void initState(BuildContext context) {
    tipModel1 = createModel(context, () => TipModel());
    tipModel2 = createModel(context, () => TipModel());
    tipModel3 = createModel(context, () => TipModel());
    tipModel4 = createModel(context, () => TipModel());
  }

  @override
  void dispose() {
    tipModel1.dispose();
    tipModel2.dispose();
    tipModel3.dispose();
    tipModel4.dispose();
  }
}
