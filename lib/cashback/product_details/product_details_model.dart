import '/cashback/components/foot_divider/foot_divider_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'product_details_widget.dart' show ProductDetailsWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductDetailsModel extends FlutterFlowModel<ProductDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for footDivider component.
  late FootDividerModel footDividerModel;

  @override
  void initState(BuildContext context) {
    footDividerModel = createModel(context, () => FootDividerModel());
  }

  @override
  void dispose() {
    footDividerModel.dispose();
  }
}
