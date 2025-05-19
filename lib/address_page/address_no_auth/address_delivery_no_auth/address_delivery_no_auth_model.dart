import '/address_page/address_no_auth/address_no_auth/address_no_auth_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'address_delivery_no_auth_widget.dart' show AddressDeliveryNoAuthWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddressDeliveryNoAuthModel
    extends FlutterFlowModel<AddressDeliveryNoAuthWidget> {
  ///  Local state fields for this page.

  LatLng? location;

  ///  State fields for stateful widgets in this page.

  // Model for addressNoAuth component.
  late AddressNoAuthModel addressNoAuthModel;

  @override
  void initState(BuildContext context) {
    addressNoAuthModel = createModel(context, () => AddressNoAuthModel());
  }

  @override
  void dispose() {
    addressNoAuthModel.dispose();
  }
}
