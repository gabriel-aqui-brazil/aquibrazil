import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/membership/without_membership/membership_welcome/membership_welcome_widget.dart';
import '/membership/without_membership/payment_method_error/payment_method_error_widget.dart';
import '/profile/payment_method/payment_method_select/payment_method_select_widget.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/actions/actions.dart' as action_blocks;
import '/index.dart';
import 'membership_checkout_widget.dart' show MembershipCheckoutWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MembershipCheckoutModel
    extends FlutterFlowModel<MembershipCheckoutWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for paymentMethodSelect component.
  late PaymentMethodSelectModel paymentMethodSelectModel;
  // Stores action output result for [Backend Call - API (Update document profile)] action in Button widget.
  ApiCallResponse? apiResultvd0;
  // Stores action output result for [Backend Call - API (Membership checkout)] action in Button widget.
  ApiCallResponse? checkout;

  @override
  void initState(BuildContext context) {
    paymentMethodSelectModel =
        createModel(context, () => PaymentMethodSelectModel());
  }

  @override
  void dispose() {
    paymentMethodSelectModel.dispose();
  }
}
