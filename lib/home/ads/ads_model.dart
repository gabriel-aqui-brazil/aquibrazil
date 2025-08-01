import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/flutter_flow/custom_functions.dart' as functions;
import 'ads_widget.dart' show AdsWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class AdsModel extends FlutterFlowModel<AdsWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Remove favorite company)] action in IconButton widget.
  ApiCallResponse? apiResulteqaCopy;
  // Stores action output result for [Backend Call - API (Insert favorite company)] action in IconButton widget.
  ApiCallResponse? apiResult8ey;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
