import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'orders_help_widget.dart' show OrdersHelpWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrdersHelpModel extends FlutterFlowModel<OrdersHelpWidget> {
  ///  Local state fields for this page.

  int step = 1;

  ComplaintReason? reason;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading_uploadDataS2j = false;
  FFUploadedFile uploadedLocalFile_uploadDataS2j =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadDataS2j2 = false;
  FFUploadedFile uploadedLocalFile_uploadDataS2j2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadDataS2j3 = false;
  FFUploadedFile uploadedLocalFile_uploadDataS2j3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Insert complaint)] action in Button widget.
  ApiCallResponse? apiResultujl;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
