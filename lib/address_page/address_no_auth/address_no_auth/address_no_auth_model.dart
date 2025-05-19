import '/address_page/address_search_list/address_search_list_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'address_no_auth_widget.dart' show AddressNoAuthWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AddressNoAuthModel extends FlutterFlowModel<AddressNoAuthWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for searchInput widget.
  FocusNode? searchInputFocusNode;
  TextEditingController? searchInputTextController;
  String? Function(BuildContext, String?)? searchInputTextControllerValidator;
  // Stores action output result for [Backend Call - API (Maps place details)] action in addressSearchList widget.
  ApiCallResponse? apiResultjng2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchInputFocusNode?.dispose();
    searchInputTextController?.dispose();
  }
}
