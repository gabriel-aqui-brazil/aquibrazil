import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import 'payment_method_nickname_widget.dart' show PaymentMethodNicknameWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentMethodNicknameModel
    extends FlutterFlowModel<PaymentMethodNicknameWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nickname widget.
  FocusNode? nicknameFocusNode;
  TextEditingController? nicknameTextController;
  String? Function(BuildContext, String?)? nicknameTextControllerValidator;
  // Stores action output result for [Backend Call - API (Update payment method nickname)] action in Button widget.
  ApiCallResponse? apiUpdateNickName;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nicknameFocusNode?.dispose();
    nicknameTextController?.dispose();
  }
}
