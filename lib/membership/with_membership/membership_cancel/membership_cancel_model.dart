import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/membership/benefits/benefits_widget.dart';
import 'dart:convert';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'membership_cancel_widget.dart' show MembershipCancelWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MembershipCancelModel extends FlutterFlowModel<MembershipCancelWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for benefits component.
  late BenefitsModel benefitsModel;
  // Stores action output result for [Backend Call - API (Membership cancel)] action in Button widget.
  ApiCallResponse? apiResultdyp;

  @override
  void initState(BuildContext context) {
    benefitsModel = createModel(context, () => BenefitsModel());
  }

  @override
  void dispose() {
    benefitsModel.dispose();
  }
}
