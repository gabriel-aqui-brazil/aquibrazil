import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/cashback/filter_distance/filter_distance_widget.dart';
import '/components/banner_aqui_pass/banner_aqui_pass_widget.dart';
import '/components/banner_new_version/banner_new_version_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/ads/ads_widget.dart';
import '/home/ads_company/ads_company_widget.dart';
import '/home/company_card/company_card_widget.dart';
import '/home/company_shortly/company_shortly_widget.dart';
import '/home/filters/filter_category/filter_category_widget.dart';
import '/home/filters/filter_discount/filter_discount_widget.dart';
import '/home/filters/filter_price/filter_price_widget.dart';
import '/home/filters/filter_rating/filter_rating_widget.dart';
import '/home/order_in_progress/order_in_progress_widget.dart';
import '/home/pesquisa_home/pesquisa_home_widget.dart';
import '/membership/without_membership/membership_without/membership_without_widget.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import "package:aquibrazil_library_oi8i5r/flutter_flow/nav/serialization_util.dart"
    as aquibrazil_library_oi8i5r_serialization_util;
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  bool filter = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - timezone] action in home widget.
  String? timezone;
  // Stores action output result for [Custom Action - isAppUpdated] action in home widget.
  bool? isAppUpdated;
  // Model for orderInProgress component.
  late OrderInProgressModel orderInProgressModel;
  // Model for pesquisaHome component.
  late PesquisaHomeModel pesquisaHomeModel;
  // Model for bannerNewVersion component.
  late BannerNewVersionModel bannerNewVersionModel;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Models for ads dynamic component.
  late FlutterFlowDynamicModels<AdsModel> adsModels;
  bool apiRequestCompleted2 = false;
  String? apiRequestLastUniqueKey2;
  // Model for bannerAquiPass component.
  late BannerAquiPassModel bannerAquiPassModel;
  // Models for adsCompany dynamic component.
  late FlutterFlowDynamicModels<AdsCompanyModel> adsCompanyModels;
  Completer<ApiCallResponse>? apiRequestCompleter1;

  @override
  void initState(BuildContext context) {
    orderInProgressModel = createModel(context, () => OrderInProgressModel());
    pesquisaHomeModel = createModel(context, () => PesquisaHomeModel());
    bannerNewVersionModel = createModel(context, () => BannerNewVersionModel());
    adsModels = FlutterFlowDynamicModels(() => AdsModel());
    bannerAquiPassModel = createModel(context, () => BannerAquiPassModel());
    adsCompanyModels = FlutterFlowDynamicModels(() => AdsCompanyModel());
  }

  @override
  void dispose() {
    orderInProgressModel.dispose();
    pesquisaHomeModel.dispose();
    bannerNewVersionModel.dispose();
    adsModels.dispose();
    bannerAquiPassModel.dispose();
    adsCompanyModels.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted2;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
