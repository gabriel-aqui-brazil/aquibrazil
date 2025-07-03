import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/membership/benefits/benefits_widget.dart';
import '/membership/without_membership/membership_plans/membership_plans_widget.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'membership_widget.dart' show MembershipWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class MembershipModel extends FlutterFlowModel<MembershipWidget> {
  ///  Local state fields for this page.

  int couponStatus = 0;

  aquibrazil_library_oi8i5r_data_schema.InfluencerStruct? couponInfluencer;
  void updateCouponInfluencerStruct(
      Function(aquibrazil_library_oi8i5r_data_schema.InfluencerStruct)
          updateFn) {
    updateFn(couponInfluencer ??=
        aquibrazil_library_oi8i5r_data_schema.InfluencerStruct());
  }

  bool mandatoryCPF = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for couponField widget.
  FocusNode? couponFieldFocusNode;
  TextEditingController? couponFieldTextController;
  String? Function(BuildContext, String?)? couponFieldTextControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (Get Coupon)] action in IconButton widget.
  ApiCallResponse? apiGetCoupon;
  // State field(s) for document widget.
  FocusNode? documentFocusNode;
  TextEditingController? documentTextController;
  late MaskTextInputFormatter documentMask;
  String? Function(BuildContext, String?)? documentTextControllerValidator;
  // Model for membershipPlans component.
  late MembershipPlansModel membershipPlansModel;
  // Model for benefits component.
  late BenefitsModel benefitsModel;

  @override
  void initState(BuildContext context) {
    membershipPlansModel = createModel(context, () => MembershipPlansModel());
    benefitsModel = createModel(context, () => BenefitsModel());
  }

  @override
  void dispose() {
    couponFieldFocusNode?.dispose();
    couponFieldTextController?.dispose();

    documentFocusNode?.dispose();
    documentTextController?.dispose();

    membershipPlansModel.dispose();
    benefitsModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
