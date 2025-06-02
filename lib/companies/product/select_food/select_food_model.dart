import '/backend/schema/structs/index.dart';
import '/companies/product/alert_mandatory_groups/alert_mandatory_groups_widget.dart';
import '/companies/product/cart_product/delivery_not_address/delivery_not_address_widget.dart';
import '/companies/product/contain_item_other_company/contain_item_other_company_widget.dart';
import '/companies/product/container_adicionais/container_adicionais_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/membership/without_membership/membership_without/membership_without_widget.dart';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'select_food_widget.dart' show SelectFoodWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SelectFoodModel extends FlutterFlowModel<SelectFoodWidget> {
  ///  Local state fields for this component.

  int count = 1;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Bottom Sheet - membershipWithout] action in Container widget.
  bool? membership;
  // Stores action output result for [Bottom Sheet - containItemOtherCompany] action in Container widget.
  bool? resultClearCart2;
  // Stores action output result for [Bottom Sheet - containItemOtherCompany] action in Container widget.
  bool? resultClearCart;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
