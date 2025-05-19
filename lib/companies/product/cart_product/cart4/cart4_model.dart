import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/companies/product/cart_product/cart5/cart5_widget.dart';
import '/companies/product/cart_product/cart_company/cart_company_widget.dart';
import '/companies/product/cart_product/cart_company_closed/cart_company_closed_widget.dart';
import '/companies/product/cart_product/cart_price_changed/cart_price_changed_widget.dart';
import '/components/banner_aqui_pass_company/banner_aqui_pass_company_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/profile/payment_method/payment_method_add/payment_method_add_widget.dart';
import '/profile/payment_method/payment_method_select/payment_method_select_widget.dart';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import 'cart4_widget.dart' show Cart4Widget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class Cart4Model extends FlutterFlowModel<Cart4Widget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getDurationDelivery] action in cart4 widget.
  String? deliveryDurationCopy;
  // Model for cartCompany component.
  late CartCompanyModel cartCompanyModel;
  // Model for bannerAquiPassCompany component.
  late BannerAquiPassCompanyModel bannerAquiPassCompanyModel;
  // Model for paymentMethodSelect component.
  late PaymentMethodSelectModel paymentMethodSelectModel;
  // State field(s) for observation widget.
  FocusNode? observationFocusNode;
  TextEditingController? observationTextController;
  String? Function(BuildContext, String?)? observationTextControllerValidator;
  // Stores action output result for [Custom Action - getDurationDelivery] action in Button widget.
  String? deliveryDuration1;

  @override
  void initState(BuildContext context) {
    cartCompanyModel = createModel(context, () => CartCompanyModel());
    bannerAquiPassCompanyModel =
        createModel(context, () => BannerAquiPassCompanyModel());
    paymentMethodSelectModel =
        createModel(context, () => PaymentMethodSelectModel());
  }

  @override
  void dispose() {
    cartCompanyModel.dispose();
    bannerAquiPassCompanyModel.dispose();
    paymentMethodSelectModel.dispose();
    observationFocusNode?.dispose();
    observationTextController?.dispose();
  }
}
