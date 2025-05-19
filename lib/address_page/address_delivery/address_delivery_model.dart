import '/address_page/address/address_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'address_delivery_widget.dart' show AddressDeliveryWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddressDeliveryModel extends FlutterFlowModel<AddressDeliveryWidget> {
  ///  Local state fields for this page.

  LatLng? location;

  ///  State fields for stateful widgets in this page.

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
