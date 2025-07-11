import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/companies/product/bottom_cart_alert/bottom_cart_alert_widget.dart';
import '/companies/product/select_food/select_food_widget.dart';
import '/components/banner_aqui_pass_company/banner_aqui_pass_company_widget.dart';
import '/components/info_company2_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'delivery_food_widget.dart' show DeliveryFoodWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class DeliveryFoodModel extends FlutterFlowModel<DeliveryFoodWidget> {
  ///  Local state fields for this page.

  aquibrazil_library_oi8i5r_data_schema.SessionStruct? selectedSesion;
  void updateSelectedSesionStruct(
      Function(aquibrazil_library_oi8i5r_data_schema.SessionStruct) updateFn) {
    updateFn(selectedSesion ??=
        aquibrazil_library_oi8i5r_data_schema.SessionStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Remove favorite company)] action in IconButton widget.
  ApiCallResponse? apiResulteqaCopy;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (Insert favorite company)] action in IconButton widget.
  ApiCallResponse? apiResult8ey;
  // Model for bannerAquiPassCompany component.
  late BannerAquiPassCompanyModel bannerAquiPassCompanyModel;
  // Model for bottomCartAlert component.
  late BottomCartAlertModel bottomCartAlertModel;

  @override
  void initState(BuildContext context) {
    bannerAquiPassCompanyModel =
        createModel(context, () => BannerAquiPassCompanyModel());
    bottomCartAlertModel = createModel(context, () => BottomCartAlertModel());
  }

  @override
  void dispose() {
    bannerAquiPassCompanyModel.dispose();
    bottomCartAlertModel.dispose();
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
