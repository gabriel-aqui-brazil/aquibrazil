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
import '/index.dart';
import 'membership_checkout_change_plan_widget.dart'
    show MembershipCheckoutChangePlanWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MembershipCheckoutChangePlanModel
    extends FlutterFlowModel<MembershipCheckoutChangePlanWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for paymentMethodSelect component.
  late PaymentMethodSelectModel paymentMethodSelectModel;
  // Stores action output result for [Backend Call - API (Membership checkout change plan)] action in Button widget.
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
