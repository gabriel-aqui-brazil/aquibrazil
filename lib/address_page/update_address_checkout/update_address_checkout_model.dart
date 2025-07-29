import '/address_page/address/address_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'update_address_checkout_widget.dart' show UpdateAddressCheckoutWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateAddressCheckoutModel
    extends FlutterFlowModel<UpdateAddressCheckoutWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for address component.
  late AddressModel addressModel;

  @override
  void initState(BuildContext context) {
    addressModel = createModel(context, () => AddressModel());
  }

  @override
  void dispose() {
    addressModel.dispose();
  }
}
