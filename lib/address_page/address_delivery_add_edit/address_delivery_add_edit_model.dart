import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'address_delivery_add_edit_widget.dart'
    show AddressDeliveryAddEditWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddressDeliveryAddEditModel
    extends FlutterFlowModel<AddressDeliveryAddEditWidget> {
  ///  Local state fields for this page.

  bool editAddress = false;

  String? typeAddress;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Maps place geocode)] action in addressDeliveryAddEdit widget.
  ApiCallResponse? apiResultu9b;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for Rua widget.
  FocusNode? ruaFocusNode;
  TextEditingController? ruaTextController;
  String? Function(BuildContext, String?)? ruaTextControllerValidator;
  // State field(s) for number widget.
  FocusNode? numberFocusNode;
  TextEditingController? numberTextController;
  String? Function(BuildContext, String?)? numberTextControllerValidator;
  // State field(s) for WithoutNumber widget.
  bool? withoutNumberValue;
  // State field(s) for Complement widget.
  FocusNode? complementFocusNode;
  TextEditingController? complementTextController;
  String? Function(BuildContext, String?)? complementTextControllerValidator;
  // State field(s) for PontoDeReferencia widget.
  FocusNode? pontoDeReferenciaFocusNode;
  TextEditingController? pontoDeReferenciaTextController;
  String? Function(BuildContext, String?)?
      pontoDeReferenciaTextControllerValidator;
  // State field(s) for Row widget.
  ScrollController? rowController;
  // Stores action output result for [Backend Call - API (Edit address)] action in Button widget.
  ApiCallResponse? apiResult1an;
  // Stores action output result for [Backend Call - API (Insert address)] action in Button widget.
  ApiCallResponse? apiResult50e;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    rowController = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
    ruaFocusNode?.dispose();
    ruaTextController?.dispose();

    numberFocusNode?.dispose();
    numberTextController?.dispose();

    complementFocusNode?.dispose();
    complementTextController?.dispose();

    pontoDeReferenciaFocusNode?.dispose();
    pontoDeReferenciaTextController?.dispose();

    rowController?.dispose();
  }
}
