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
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  static String routeName = 'home';
  static String routePath = 'home';

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0));
      if (currentUserData?.phone == null || currentUserData?.phone == '') {
        context.pushNamed(CompleteProfileNumberWidget.routeName);
      } else if ((currentUserData?.address?.address == null ||
              currentUserData?.address?.address == '') &&
          (currentUserData?.phone != null && currentUserData?.phone != '')) {
        if (await getPermissionStatus(locationPermission)) {
          context.goNamed(
            AddressDeliveryMapWidget.routeName,
            queryParameters: {
              'location': serializeParam(
                currentUserLocationValue,
                ParamType.LatLng,
              ),
              'edit': serializeParam(
                false,
                ParamType.bool,
              ),
            }.withoutNulls,
          );
        } else {
          context.goNamed(SignupStep6Widget.routeName);
        }
      }

      _model.timezone = await actions.timezone();
      HapticFeedback.mediumImpact();
      await actions.getAppVersionInfo();
      _model.cacheOverride = await action_blocks.verifyHomeCache(context);
      if (_model.cacheOverride!) {
        await action_blocks.verifyAppVersion(context);
        safeSetState(() {});
      }
      authManager.updateAuthUserData(
        authenticationToken: currentAuthenticationToken,
        tokenExpiration: currentAuthTokenExpiration,
        authUid: currentUserUid,
        userData: UserStruct(
          id: currentUserData?.id,
          firstName: currentUserData?.firstName,
          lastName: currentUserData?.lastName,
          email: currentUserData?.email,
          biometric: currentUserData?.biometric,
          profilePicture: currentUserData?.profilePicture,
          location: currentUserData?.location,
          address: currentUserData?.address,
          cashbackEarned: currentUserData?.cashbackEarned,
          phone: currentUserData?.phone,
          timezone: _model.timezone,
          defaultCard: currentUserData?.defaultCard,
          document: currentUserData?.document,
          lastOrderId: currentUserData?.lastOrderId,
        ),
      );
      _model.isAppUpdated = await actions.isAppUpdated(
        FFAppState().appVersion,
        FFAppState().actualVersion,
      );
      FFAppState().paymentMethodSelected = currentUserData!.defaultCard;
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: FFAppState()
          .cacheHomePage(
        uniqueQueryKey: valueOrDefault<String>(
          currentUserData?.id,
          '---',
        ),
        requestFn: () => MainGroup.getHomeCall.call(
          token: currentAuthenticationToken,
        ),
      )
          .then((result) {
        try {
          _model.apiRequestCompleted2 = true;
          _model.apiRequestLastUniqueKey2 = valueOrDefault<String>(
            currentUserData?.id,
            '---',
          );
        } finally {}
        return result;
      }),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 35.0,
                height: 35.0,
                child: SpinKitFadingCircle(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 35.0,
                ),
              ),
            ),
          );
        }
        final homeGetHomeResponse = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F7F7),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.orderInProgressModel,
                          updateCallback: () => safeSetState(() {}),
                          child: OrderInProgressWidget(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0,
                              valueOrDefault<double>(
                                FFAppState().orderSelected.hasId() &&
                                        (FFAppState().orderSelected.status !=
                                            'Concluido') &&
                                        (FFAppState().orderSelected.status !=
                                            'Agendado') &&
                                        (FFAppState().orderSelected.status !=
                                            'Cancelado') &&
                                        (FFAppState().orderSelected.status !=
                                            'Recusado')
                                    ? 16.0
                                    : 54.0,
                                0.0,
                              ),
                              12.0,
                              4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.goNamed(
                                        AddressDeliveryWidget.routeName);
                                  },
                                  child: ClipRRect(
                                    child: Container(
                                      width: 200.0,
                                      decoration: BoxDecoration(),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Flexible(
                                              child: Text(
                                                valueOrDefault<String>(
                                                  functions.toUpperCase(
                                                      valueOrDefault<String>(
                                                    functions.getAddressFromIndex(
                                                        aquibrazil_library_oi8i5r_data_schema
                                                                    .HomeStruct
                                                                .maybeFromMap(
                                                                    homeGetHomeResponse
                                                                        .jsonBody)!
                                                            .customer
                                                            .address
                                                            .address,
                                                        0,
                                                        0),
                                                    'Endereço',
                                                  )),
                                                  '--',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 1.0),
                                              child: Icon(
                                                FFIcons.karrow41,
                                                color: Color(0xFF151515),
                                                size: 16.0,
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (aquibrazil_library_oi8i5r_data_schema
                                                  .HomeStruct
                                              .maybeFromMap(
                                                  homeGetHomeResponse.jsonBody)!
                                          .customer
                                          .membership
                                          .hasId()) {
                                        FFAppState().clearCacheHomePageCacheKey(
                                            valueOrDefault<String>(
                                          currentUserData?.id,
                                          '-',
                                        ));

                                        context.pushNamed(
                                            MyCashBackWidget.routeName);

                                        return;
                                      } else {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          useSafeArea: true,
                                          context: context,
                                          builder: (context) {
                                            return WebViewAware(
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      MembershipWithoutWidget(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        return;
                                      }
                                    },
                                    child: Container(
                                      width: 100.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 8.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Lottie.asset(
                                              'assets/jsons/coin-dollar.json',
                                              width: 24.0,
                                              height: 24.0,
                                              fit: BoxFit.cover,
                                              animate: true,
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                formatNumber(
                                                  aquibrazil_library_oi8i5r_data_schema
                                                              .HomeStruct
                                                          .maybeFromMap(
                                                              homeGetHomeResponse
                                                                  .jsonBody)
                                                      ?.customer
                                                      ?.cashbackTransactionsAmount,
                                                  formatType: FormatType.custom,
                                                  format: '#,##0.00',
                                                  locale: 'en_us',
                                                ),
                                                '\$0.00',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Colors.white,
                                                    fontSize: 15.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ].divide(SizedBox(width: 5.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: wrapWithModel(
                            model: _model.pesquisaHomeModel,
                            updateCallback: () => safeSetState(() {}),
                            child: PesquisaHomeWidget(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: Wrap(
                                  spacing: 0.0,
                                  runSpacing: 0.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          final category =
                                              aquibrazil_library_oi8i5r_data_schema
                                                              .HomeStruct
                                                          .maybeFromMap(
                                                              homeGetHomeResponse
                                                                  .jsonBody)
                                                      ?.category
                                                      ?.toList() ??
                                                  [];

                                          return GridView.builder(
                                            padding: EdgeInsets.zero,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 4,
                                              crossAxisSpacing: 10.0,
                                              mainAxisSpacing: 10.0,
                                              childAspectRatio: 1.0,
                                            ),
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: category.length,
                                            itemBuilder:
                                                (context, categoryIndex) {
                                              final categoryItem =
                                                  category[categoryIndex];
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (categoryItem.name !=
                                                          null &&
                                                      categoryItem.name != '') {
                                                    context.pushNamed(
                                                      FilterCompanyWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'category':
                                                            aquibrazil_library_oi8i5r_serialization_util
                                                                .serializeParam(
                                                          categoryItem,
                                                          aquibrazil_library_oi8i5r_serialization_util
                                                              .ParamType
                                                              .DataStruct,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  } else {
                                                    context.pushNamed(
                                                        AllCategoriesWidget
                                                            .routeName);
                                                  }
                                                },
                                                child: Builder(
                                                  builder: (context) {
                                                    if (categoryItem.name !=
                                                            null &&
                                                        categoryItem.name !=
                                                            '') {
                                                      return Container(
                                                        width: 84.0,
                                                        height: 90.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFF7F7F7),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  4.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  if (functions.formatImage(
                                                                          categoryItem
                                                                              .categoryPhotoUrl) ==
                                                                      'image') {
                                                                    return ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0.0),
                                                                      child: Image
                                                                          .network(
                                                                        categoryItem
                                                                            .categoryPhotoUrl,
                                                                        width:
                                                                            40.0,
                                                                        height:
                                                                            40.0,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                    );
                                                                  } else {
                                                                    return ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0.0),
                                                                      child: SvgPicture
                                                                          .network(
                                                                        categoryItem
                                                                            .categoryPhotoUrl,
                                                                        width:
                                                                            40.0,
                                                                        height:
                                                                            40.0,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                    );
                                                                  }
                                                                },
                                                              ),
                                                              Flexible(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          8.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child:
                                                                      AutoSizeText(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getVariableText(
                                                                        ptText:
                                                                            functions.toUpperCase(categoryItem.name),
                                                                        enText:
                                                                            functions.toUpperCase(categoryItem.nameEn),
                                                                        esText:
                                                                            functions.toUpperCase(categoryItem.nameEs),
                                                                      ),
                                                                      '--',
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    maxLines: 2,
                                                                    minFontSize:
                                                                        10.0,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.poppins(
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          fontSize:
                                                                              11.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    } else {
                                                      return Container(
                                                        width: 80.0,
                                                        height: 90.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFF7F7F7),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Lottie.asset(
                                                              'assets/jsons/Menu.json',
                                                              width: 40.0,
                                                              height: 40.0,
                                                              fit: BoxFit.cover,
                                                              animate: true,
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    }
                                                  },
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            if (valueOrDefault<bool>(
                              _model.isAppUpdated == false,
                              false,
                            ))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.bannerNewVersionModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: BannerNewVersionWidget(),
                                ),
                              ),
                            if (aquibrazil_library_oi8i5r_data_schema.HomeStruct
                                        .maybeFromMap(
                                            homeGetHomeResponse.jsonBody)!
                                    .adsBanner
                                    .length >
                                0)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final banner =
                                        aquibrazil_library_oi8i5r_data_schema
                                                        .HomeStruct
                                                    .maybeFromMap(
                                                        homeGetHomeResponse
                                                            .jsonBody)
                                                ?.adsBanner
                                                ?.toList() ??
                                            [];

                                    return Container(
                                      width: double.infinity,
                                      height: 200.0,
                                      child: CarouselSlider.builder(
                                        itemCount: banner.length,
                                        itemBuilder: (context, bannerIndex, _) {
                                          final bannerItem =
                                              banner[bannerIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if ((bannerItem.company.id !=
                                                          null &&
                                                      bannerItem.company.id !=
                                                          '') ||
                                                  (bannerItem.companyPartner
                                                              .id !=
                                                          null &&
                                                      bannerItem.companyPartner
                                                              .id !=
                                                          '')) {
                                                if (bannerItem.company.id !=
                                                        null &&
                                                    bannerItem.company.id !=
                                                        '') {
                                                  unawaited(
                                                    () async {
                                                      await MainGroup
                                                          .insertAnalyticsCall
                                                          .call(
                                                        companyId: bannerItem
                                                            .company.id,
                                                        eventName:
                                                            'banner_principal',
                                                        token:
                                                            currentAuthenticationToken,
                                                        type: 'visita',
                                                      );
                                                    }(),
                                                  );
                                                  if (bannerItem.company.type ==
                                                      'entrega') {
                                                    context.pushNamed(
                                                      DeliveryFoodWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'companyId':
                                                            serializeParam(
                                                          bannerItem.company.id,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );

                                                    return;
                                                  } else {
                                                    context.pushNamed(
                                                      ServiceWidget.routeName,
                                                      queryParameters: {
                                                        'company':
                                                            aquibrazil_library_oi8i5r_serialization_util
                                                                .serializeParam(
                                                          bannerItem.company,
                                                          aquibrazil_library_oi8i5r_serialization_util
                                                              .ParamType
                                                              .DataStruct,
                                                        ),
                                                      }.withoutNulls,
                                                    );

                                                    return;
                                                  }
                                                } else {
                                                  if (aquibrazil_library_oi8i5r_data_schema
                                                              .HomeStruct
                                                          .maybeFromMap(
                                                              homeGetHomeResponse
                                                                  .jsonBody)!
                                                      .customer
                                                      .membership
                                                      .hasId()) {
                                                    unawaited(
                                                      () async {
                                                        await MainGroup
                                                            .insertAnalyticsCall
                                                            .call(
                                                          pageId: bannerItem
                                                              .companyPartner
                                                              .id,
                                                          eventName:
                                                              'banner_principal',
                                                          token:
                                                              currentAuthenticationToken,
                                                          type: 'visita',
                                                        );
                                                      }(),
                                                    );

                                                    context.pushNamed(
                                                      PartnerWidget.routeName,
                                                      queryParameters: {
                                                        'partnerDetails':
                                                            aquibrazil_library_oi8i5r_serialization_util
                                                                .serializeParam(
                                                          bannerItem
                                                              .companyPartner,
                                                          aquibrazil_library_oi8i5r_serialization_util
                                                              .ParamType
                                                              .DataStruct,
                                                        ),
                                                      }.withoutNulls,
                                                    );

                                                    return;
                                                  } else {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      useSafeArea: true,
                                                      context: context,
                                                      builder: (context) {
                                                        return WebViewAware(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      context)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  MembershipWithoutWidget(),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));

                                                    return;
                                                  }
                                                }
                                              } else {
                                                return;
                                              }
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              child: CachedNetworkImage(
                                                fadeInDuration:
                                                    Duration(milliseconds: 500),
                                                fadeOutDuration:
                                                    Duration(milliseconds: 500),
                                                imageUrl: bannerItem.media,
                                                width: 300.0,
                                                height: 170.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                        },
                                        carouselController:
                                            _model.carouselController ??=
                                                CarouselSliderController(),
                                        options: CarouselOptions(
                                          initialPage:
                                              max(0, min(1, banner.length - 1)),
                                          viewportFraction: 0.9,
                                          disableCenter: true,
                                          enlargeCenterPage: true,
                                          enlargeFactor: 0.2,
                                          enableInfiniteScroll: true,
                                          scrollDirection: Axis.horizontal,
                                          autoPlay: true,
                                          autoPlayAnimationDuration:
                                              Duration(milliseconds: 1500),
                                          autoPlayInterval: Duration(
                                              milliseconds: (1500 + 4000)),
                                          autoPlayCurve: Curves.linear,
                                          pauseAutoPlayInFiniteScroll: true,
                                          onPageChanged: (index, _) => _model
                                              .carouselCurrentIndex = index,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            if (aquibrazil_library_oi8i5r_data_schema.HomeStruct
                                            .maybeFromMap(
                                                homeGetHomeResponse.jsonBody)
                                        ?.adsDelivery !=
                                    null &&
                                (aquibrazil_library_oi8i5r_data_schema
                                                .HomeStruct
                                            .maybeFromMap(
                                                homeGetHomeResponse.jsonBody)
                                        ?.adsDelivery)!
                                    .isNotEmpty)
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Visibility(
                                  visible: aquibrazil_library_oi8i5r_data_schema
                                                      .HomeStruct
                                                  .maybeFromMap(
                                                      homeGetHomeResponse
                                                          .jsonBody)
                                              ?.adsDelivery !=
                                          null &&
                                      (aquibrazil_library_oi8i5r_data_schema
                                                      .HomeStruct
                                                  .maybeFromMap(
                                                      homeGetHomeResponse
                                                          .jsonBody)
                                              ?.adsDelivery)!
                                          .isNotEmpty,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'a631xi16' /* PROMOS DO MÊS DELIVERY */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              borderRadius: 100.0,
                                              borderWidth: 0.5,
                                              buttonSize: 30.0,
                                              fillColor: Color(0xFFF7F7F7),
                                              icon: Icon(
                                                Icons.arrow_forward,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 15.0,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 260.0,
                                        decoration: BoxDecoration(),
                                        child: Builder(
                                          builder: (context) {
                                            final adsDelivery =
                                                aquibrazil_library_oi8i5r_data_schema
                                                                .HomeStruct
                                                            .maybeFromMap(
                                                                homeGetHomeResponse
                                                                    .jsonBody)
                                                        ?.adsDelivery
                                                        ?.toList() ??
                                                    [];

                                            return ListView.separated(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12.0),
                                              scrollDirection: Axis.horizontal,
                                              itemCount: adsDelivery.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(width: 12.0),
                                              itemBuilder:
                                                  (context, adsDeliveryIndex) {
                                                final adsDeliveryItem =
                                                    adsDelivery[
                                                        adsDeliveryIndex];
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                      DeliveryFoodWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'companyId':
                                                            serializeParam(
                                                          adsDeliveryItem
                                                              .company.id,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: wrapWithModel(
                                                    model: _model.adsModels
                                                        .getModel(
                                                      adsDeliveryItem.id,
                                                      adsDeliveryIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: AdsWidget(
                                                      key: Key(
                                                        'Keyr1e_${adsDeliveryItem.id}',
                                                      ),
                                                      ads: adsDeliveryItem,
                                                      cb: () async {
                                                        safeSetState(() {
                                                          FFAppState()
                                                              .clearCacheHomePageCacheKey(
                                                                  _model
                                                                      .apiRequestLastUniqueKey2);
                                                          _model.apiRequestCompleted2 =
                                                              false;
                                                        });
                                                        await _model
                                                            .waitForApiRequestCompleted2();
                                                      },
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ]
                                        .divide(SizedBox(height: 16.0))
                                        .addToStart(SizedBox(height: 4.0))
                                        .addToEnd(SizedBox(height: 4.0)),
                                  ),
                                ),
                              ),
                            if (!aquibrazil_library_oi8i5r_data_schema
                                        .HomeStruct
                                    .maybeFromMap(homeGetHomeResponse.jsonBody)!
                                .customer
                                .membership
                                .hasId())
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context
                                        .pushNamed(MembershipWidget.routeName);
                                  },
                                  child: wrapWithModel(
                                    model: _model.bannerAquiPassModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: BannerAquiPassWidget(),
                                  ),
                                ),
                              ),
                            if (aquibrazil_library_oi8i5r_data_schema.HomeStruct
                                            .maybeFromMap(
                                                homeGetHomeResponse.jsonBody)
                                        ?.companyPartner !=
                                    null &&
                                (aquibrazil_library_oi8i5r_data_schema
                                                .HomeStruct
                                            .maybeFromMap(
                                                homeGetHomeResponse.jsonBody)
                                        ?.companyPartner)!
                                    .isNotEmpty)
                              Container(
                                width: double.infinity,
                                height: 220.0,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9qg5u7ed' /* NOSSO CLUB DE PARCEIROS */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Anton',
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            borderRadius: 100.0,
                                            borderWidth: 0.5,
                                            buttonSize: 30.0,
                                            fillColor: Color(0xFFF7F7F7),
                                            icon: Icon(
                                              Icons.arrow_forward,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 15.0,
                                            ),
                                            onPressed: () async {
                                              context.pushNamed(
                                                  PartnersWidget.routeName);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final companyPartner =
                                                aquibrazil_library_oi8i5r_data_schema
                                                                .HomeStruct
                                                            .maybeFromMap(
                                                                homeGetHomeResponse
                                                                    .jsonBody)
                                                        ?.companyPartner
                                                        ?.toList() ??
                                                    [];

                                            return ListView.separated(
                                              padding: EdgeInsets.fromLTRB(
                                                12.0,
                                                0,
                                                12.0,
                                                0,
                                              ),
                                              scrollDirection: Axis.horizontal,
                                              itemCount: companyPartner.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(width: 4.0),
                                              itemBuilder: (context,
                                                  companyPartnerIndex) {
                                                final companyPartnerItem =
                                                    companyPartner[
                                                        companyPartnerIndex];
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    if (aquibrazil_library_oi8i5r_data_schema
                                                                .HomeStruct
                                                            .maybeFromMap(
                                                                homeGetHomeResponse
                                                                    .jsonBody)!
                                                        .customer
                                                        .membership
                                                        .hasId()) {
                                                      unawaited(
                                                        () async {
                                                          await MainGroup
                                                              .insertAnalyticsCall
                                                              .call(
                                                            pageId:
                                                                companyPartnerItem
                                                                    .id,
                                                            eventName: 'home',
                                                            token:
                                                                currentAuthenticationToken,
                                                            type: 'visita',
                                                          );
                                                        }(),
                                                      );

                                                      context.pushNamed(
                                                        PartnerWidget.routeName,
                                                        queryParameters: {
                                                          'partnerDetails':
                                                              aquibrazil_library_oi8i5r_serialization_util
                                                                  .serializeParam(
                                                            companyPartnerItem,
                                                            aquibrazil_library_oi8i5r_serialization_util
                                                                .ParamType
                                                                .DataStruct,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        useSafeArea: true,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    MembershipWithoutWidget(),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    }
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      24.0),
                                                          child:
                                                              CachedNetworkImage(
                                                            fadeInDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        500),
                                                            fadeOutDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        500),
                                                            imageUrl:
                                                                companyPartnerItem
                                                                    .profilePhotoUrl,
                                                            width: 75.0,
                                                            height: 75.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 100.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            '${formatNumber(
                                                              companyPartnerItem
                                                                  .distance,
                                                              formatType:
                                                                  FormatType
                                                                      .custom,
                                                              format: '####.#',
                                                              locale: '',
                                                            )} MILHAS',
                                                            '0 MILHAS',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 11.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ]
                                      .divide(SizedBox(height: 12.0))
                                      .addToStart(SizedBox(height: 12.0))
                                      .addToEnd(SizedBox(height: 12.0)),
                                ),
                              ),
                            if (aquibrazil_library_oi8i5r_data_schema.HomeStruct
                                            .maybeFromMap(
                                                homeGetHomeResponse.jsonBody)
                                        ?.companyPromotional !=
                                    null &&
                                (aquibrazil_library_oi8i5r_data_schema
                                                .HomeStruct
                                            .maybeFromMap(
                                                homeGetHomeResponse.jsonBody)
                                        ?.companyPromotional)!
                                    .isNotEmpty)
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'iongg50t' /* +15% DE DESCONTO COM AQUIPASS */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Anton',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 12.0)),
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 260.0,
                                        decoration: BoxDecoration(),
                                        child: Builder(
                                          builder: (context) {
                                            final companyPromotional =
                                                aquibrazil_library_oi8i5r_data_schema
                                                                .HomeStruct
                                                            .maybeFromMap(
                                                                homeGetHomeResponse
                                                                    .jsonBody)
                                                        ?.companyPromotional
                                                        ?.toList() ??
                                                    [];

                                            return ListView.separated(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 12.0),
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  companyPromotional.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(width: 12.0),
                                              itemBuilder: (context,
                                                  companyPromotionalIndex) {
                                                final companyPromotionalItem =
                                                    companyPromotional[
                                                        companyPromotionalIndex];
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    if (companyPromotionalItem
                                                            .type ==
                                                        'entrega') {
                                                      context.pushNamed(
                                                        DeliveryFoodWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'companyId':
                                                              serializeParam(
                                                            companyPromotionalItem
                                                                .id,
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    } else {
                                                      context.pushNamed(
                                                        ServiceWidget.routeName,
                                                        queryParameters: {
                                                          'company':
                                                              aquibrazil_library_oi8i5r_serialization_util
                                                                  .serializeParam(
                                                            companyPromotionalItem,
                                                            aquibrazil_library_oi8i5r_serialization_util
                                                                .ParamType
                                                                .DataStruct,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    }
                                                  },
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .adsCompanyModels
                                                        .getModel(
                                                      companyPromotionalItem.id,
                                                      companyPromotionalIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: AdsCompanyWidget(
                                                      key: Key(
                                                        'Keyjux_${companyPromotionalItem.id}',
                                                      ),
                                                      company:
                                                          companyPromotionalItem,
                                                      cb: () async {
                                                        safeSetState(() {
                                                          FFAppState()
                                                              .clearCacheHomePageCacheKey(
                                                                  _model
                                                                      .apiRequestLastUniqueKey2);
                                                          _model.apiRequestCompleted2 =
                                                              false;
                                                        });
                                                        await _model
                                                            .waitForApiRequestCompleted2();
                                                      },
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ]
                                        .divide(SizedBox(height: 16.0))
                                        .addToStart(SizedBox(height: 4.0))
                                        .addToEnd(SizedBox(height: 4.0)),
                                  ),
                                ),
                              ),
                            if (aquibrazil_library_oi8i5r_data_schema.HomeStruct
                                            .maybeFromMap(
                                                homeGetHomeResponse.jsonBody)
                                        ?.companyShortly !=
                                    null &&
                                (aquibrazil_library_oi8i5r_data_schema
                                                .HomeStruct
                                            .maybeFromMap(
                                                homeGetHomeResponse.jsonBody)
                                        ?.companyShortly)!
                                    .isNotEmpty)
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 2.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '92jsf2c9' /* EM BREVE */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Anton',
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 12.0)),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'vib538gu' /* VEJA AS LOJAS QUE ESTÃO CHEGAN... */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .inter(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 12.0)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 150.0,
                                        decoration: BoxDecoration(),
                                        child: Builder(
                                          builder: (context) {
                                            final companyShortly =
                                                aquibrazil_library_oi8i5r_data_schema
                                                                .HomeStruct
                                                            .maybeFromMap(
                                                                homeGetHomeResponse
                                                                    .jsonBody)
                                                        ?.companyShortly
                                                        ?.toList() ??
                                                    [];

                                            return ListView.separated(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                              scrollDirection: Axis.horizontal,
                                              itemCount: companyShortly.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(width: 4.0),
                                              itemBuilder: (context,
                                                  companyShortlyIndex) {
                                                final companyShortlyItem =
                                                    companyShortly[
                                                        companyShortlyIndex];
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      builder: (context) {
                                                        return WebViewAware(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      context)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  CompanyShortlyWidget(),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      80.0),
                                                          child:
                                                              CachedNetworkImage(
                                                            fadeInDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        500),
                                                            fadeOutDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        500),
                                                            imageUrl:
                                                                companyShortlyItem
                                                                    .profilePhotoUrl,
                                                            width: 75.0,
                                                            height: 75.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 100.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            companyShortlyItem
                                                                .name,
                                                            '--',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ]
                                        .divide(SizedBox(height: 16.0))
                                        .addToStart(SizedBox(height: 4.0))
                                        .addToEnd(SizedBox(height: 4.0)),
                                  ),
                                ),
                              ),
                            if (false)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 12.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 180.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF4BC48D),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/background.png',
                                            ).image,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(),
                                          child: Stack(
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                      OrderHistoryWidget
                                                          .routeName);
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x1F000000),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'gq5j4efm' /* MEUS PEDIDOS
RECENTES */
                                                            ,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 165.0,
                                                              height: 25.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x27000000),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          1.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '4ymww51f' /* HISTÓRICO DE PEDIDOS */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.ubuntu(
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              fontSize: 11.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .chevron_right_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 1.0),
                                                      child: Lottie.asset(
                                                        'assets/jsons/woman-checking-holographic-menu.json',
                                                        width: 170.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                1.2,
                                                        fit: BoxFit.contain,
                                                        animate: true,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            FutureBuilder<ApiCallResponse>(
                              future: (_model.apiRequestCompleter1 ??=
                                      Completer<ApiCallResponse>()
                                        ..complete(
                                            MainGroup.queryCompanyHomeCall.call(
                                          token: currentAuthenticationToken,
                                          isPickup:
                                              FFAppState().filterHome.isPickup,
                                          primaryCategoryId: FFAppState()
                                              .filterHome
                                              .category
                                              .id,
                                          discount:
                                              FFAppState().filterHome.discount,
                                          isFreeDelivery: FFAppState()
                                              .filterHome
                                              .isFreeDelivery,
                                          distance:
                                              FFAppState().filterHome.distance,
                                          timezone: currentUserData?.timezone,
                                        )))
                                  .future,
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 35.0,
                                      height: 35.0,
                                      child: SpinKitFadingCircle(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 35.0,
                                      ),
                                    ),
                                  );
                                }
                                final containerQueryCompanyHomeResponse =
                                    snapshot.data!;

                                return Container(
                                  decoration: BoxDecoration(),
                                  child: Visibility(
                                    visible: (aquibrazil_library_oi8i5r_data_schema
                                                    .CompanyWithCategoryStruct
                                                .maybeFromMap(
                                                    containerQueryCompanyHomeResponse
                                                        .jsonBody)!
                                            .company
                                            .isNotEmpty) ||
                                        _model.filter,
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 30.0,
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'g61vpjax' /* TODAS AS LOJAS */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Anton',
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 20.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 45.0,
                                              decoration: BoxDecoration(),
                                              child: ListView(
                                                padding: EdgeInsets.fromLTRB(
                                                  12.0,
                                                  0,
                                                  12.0,
                                                  0,
                                                ),
                                                primary: false,
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (FFAppState()
                                                                  .filterHome
                                                                  .category
                                                                  .id !=
                                                              null &&
                                                          FFAppState()
                                                                  .filterHome
                                                                  .category
                                                                  .id !=
                                                              '') {
                                                        FFAppState()
                                                            .updateFilterHomeStruct(
                                                          (e) => e
                                                            ..category = null,
                                                        );
                                                        FFAppState()
                                                            .update(() {});
                                                        _model.filter = false;
                                                        safeSetState(() {});
                                                        safeSetState(() => _model
                                                                .apiRequestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForApiRequestCompleted1();
                                                        return;
                                                      } else {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          useSafeArea: true,
                                                          context: context,
                                                          builder: (context) {
                                                            return WebViewAware(
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  FocusScope.of(
                                                                          context)
                                                                      .unfocus();
                                                                  FocusManager
                                                                      .instance
                                                                      .primaryFocus
                                                                      ?.unfocus();
                                                                },
                                                                child: Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      FilterCategoryWidget(
                                                                    category: aquibrazil_library_oi8i5r_data_schema.CompanyWithCategoryStruct.maybeFromMap(
                                                                            containerQueryCompanyHomeResponse.jsonBody)!
                                                                        .companyCategory,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));

                                                        _model.filter = true;
                                                        safeSetState(() {});
                                                        safeSetState(() => _model
                                                                .apiRequestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForApiRequestCompleted1();
                                                        return;
                                                      }
                                                    },
                                                    child: Container(
                                                      width: 110.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: FFAppState()
                                                                        .filterHome
                                                                        .category
                                                                        .id !=
                                                                    null &&
                                                                FFAppState()
                                                                        .filterHome
                                                                        .category
                                                                        .id !=
                                                                    ''
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : Color(0xFFF7F7F7),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100.0),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'f8z7x8a0' /* CATEGORIA */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      11.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        1.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Icon(
                                                              FFIcons.karrow41,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 12.0,
                                                            ),
                                                          ),
                                                        ]
                                                            .divide(SizedBox(
                                                                width: 4.0))
                                                            .addToStart(
                                                                SizedBox(
                                                                    width:
                                                                        12.0))
                                                            .addToEnd(SizedBox(
                                                                width: 12.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  if (FFAppState()
                                                          .filterHome
                                                          .category
                                                          .name !=
                                                      'Agendamento')
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState()
                                                            .updateFilterHomeStruct(
                                                          (e) => e
                                                            ..isPickup =
                                                                !e.isPickup,
                                                        );
                                                        safeSetState(() {});
                                                        _model.filter = true;
                                                        safeSetState(() {});
                                                        safeSetState(() => _model
                                                                .apiRequestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForApiRequestCompleted1();
                                                      },
                                                      child: Container(
                                                        width: 95.29,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                  .filterHome
                                                                  .isPickup
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .primary
                                                              : Color(
                                                                  0xFFF7F7F7),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'omm5ygr5' /* RETIRADA */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FFAppState()
                                                                            .filterHome
                                                                            .isPickup
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .secondaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    fontSize:
                                                                        11.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ]
                                                              .divide(SizedBox(
                                                                  width: 4.0))
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          12.0))
                                                              .addToEnd(SizedBox(
                                                                  width: 12.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  if (FFAppState()
                                                          .filterHome
                                                          .category
                                                          .name !=
                                                      'Agendamento')
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState()
                                                            .updateFilterHomeStruct(
                                                          (e) => e
                                                            ..isFreeDelivery = !e
                                                                .isFreeDelivery,
                                                        );
                                                        safeSetState(() {});
                                                        _model.filter = true;
                                                        safeSetState(() {});
                                                        safeSetState(() => _model
                                                                .apiRequestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForApiRequestCompleted1();
                                                      },
                                                      child: Container(
                                                        width: 126.31,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                  .filterHome
                                                                  .isFreeDelivery
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .primary
                                                              : Color(
                                                                  0xFFF7F7F7),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'lzqh8h0w' /* ENTREGA GRÁTIS */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FFAppState()
                                                                            .filterHome
                                                                            .isFreeDelivery
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .secondaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    fontSize:
                                                                        11.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ]
                                                              .divide(SizedBox(
                                                                  width: 4.0))
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          12.0))
                                                              .addToEnd(SizedBox(
                                                                  width: 12.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (FFAppState()
                                                              .filterHome
                                                              .discount !=
                                                          0.0) {
                                                        FFAppState()
                                                            .updateFilterHomeStruct(
                                                          (e) => e
                                                            ..discount = null,
                                                        );
                                                        FFAppState()
                                                            .update(() {});
                                                        _model.filter = false;
                                                        safeSetState(() {});
                                                        safeSetState(() => _model
                                                                .apiRequestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForApiRequestCompleted1();
                                                      } else {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          useSafeArea: true,
                                                          context: context,
                                                          builder: (context) {
                                                            return WebViewAware(
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  FocusScope.of(
                                                                          context)
                                                                      .unfocus();
                                                                  FocusManager
                                                                      .instance
                                                                      .primaryFocus
                                                                      ?.unfocus();
                                                                },
                                                                child: Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      FilterDiscountWidget(),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));

                                                        _model.filter = true;
                                                        safeSetState(() {});
                                                        safeSetState(() => _model
                                                                .apiRequestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForApiRequestCompleted1();
                                                      }
                                                    },
                                                    child: Container(
                                                      width: 165.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: FFAppState()
                                                                    .filterHome
                                                                    .discount !=
                                                                0.0
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : Color(0xFFF7F7F7),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100.0),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'cqho8gfr' /* DESCONTO DO CLUBE */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FFAppState()
                                                                              .filterHome
                                                                              .discount !=
                                                                          0.0
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  fontSize:
                                                                      11.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        1.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Icon(
                                                              FFIcons.karrow41,
                                                              color: FFAppState()
                                                                          .filterHome
                                                                          .discount !=
                                                                      0.0
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              size: 12.0,
                                                            ),
                                                          ),
                                                        ]
                                                            .divide(SizedBox(
                                                                width: 4.0))
                                                            .addToStart(
                                                                SizedBox(
                                                                    width:
                                                                        12.0))
                                                            .addToEnd(SizedBox(
                                                                width: 12.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  if (false)
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (FFAppState()
                                                                .filterHome
                                                                .price !=
                                                            0) {
                                                          FFAppState()
                                                              .updateFilterHomeStruct(
                                                            (e) =>
                                                                e..price = null,
                                                          );
                                                          safeSetState(() {});
                                                          _model.filter = false;
                                                          safeSetState(() {});
                                                          safeSetState(() =>
                                                              _model.apiRequestCompleter1 =
                                                                  null);
                                                          await _model
                                                              .waitForApiRequestCompleted1();
                                                        } else {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            useSafeArea: true,
                                                            context: context,
                                                            builder: (context) {
                                                              return WebViewAware(
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () {
                                                                    FocusScope.of(
                                                                            context)
                                                                        .unfocus();
                                                                    FocusManager
                                                                        .instance
                                                                        .primaryFocus
                                                                        ?.unfocus();
                                                                  },
                                                                  child:
                                                                      Padding(
                                                                    padding: MediaQuery
                                                                        .viewInsetsOf(
                                                                            context),
                                                                    child:
                                                                        FilterPriceWidget(),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));

                                                          _model.filter = true;
                                                          safeSetState(() {});
                                                          safeSetState(() =>
                                                              _model.apiRequestCompleter1 =
                                                                  null);
                                                          await _model
                                                              .waitForApiRequestCompleted1();
                                                        }
                                                      },
                                                      child: Container(
                                                        width: 80.0,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FFAppState()
                                                                      .filterHome
                                                                      .price !=
                                                                  0
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .primary
                                                              : Color(
                                                                  0xFFF7F7F7),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'elczxofs' /* PREÇO */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FFAppState().filterHome.price !=
                                                                            0
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .secondaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    fontSize:
                                                                        11.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          1.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Icon(
                                                                FFIcons
                                                                    .karrow41,
                                                                color: FFAppState().filterHome.price !=
                                                                        0
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                size: 12.0,
                                                              ),
                                                            ),
                                                          ]
                                                              .divide(SizedBox(
                                                                  width: 4.0))
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          12.0))
                                                              .addToEnd(SizedBox(
                                                                  width: 12.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  if (false)
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          useSafeArea: true,
                                                          context: context,
                                                          builder: (context) {
                                                            return WebViewAware(
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  FocusScope.of(
                                                                          context)
                                                                      .unfocus();
                                                                  FocusManager
                                                                      .instance
                                                                      .primaryFocus
                                                                      ?.unfocus();
                                                                },
                                                                child: Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      FilterRatingWidget(),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));

                                                        _model.filter = true;
                                                        safeSetState(() {});
                                                        safeSetState(() => _model
                                                                .apiRequestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForApiRequestCompleted1();
                                                      },
                                                      child: Container(
                                                        width: 110.0,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFF7F7F7),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'mln9k1v6' /* AVALIAÇÕES */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    fontSize:
                                                                        11.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          1.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Icon(
                                                                FFIcons
                                                                    .karrow41,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 12.0,
                                                              ),
                                                            ),
                                                          ]
                                                              .divide(SizedBox(
                                                                  width: 4.0))
                                                              .addToStart(
                                                                  SizedBox(
                                                                      width:
                                                                          12.0))
                                                              .addToEnd(SizedBox(
                                                                  width: 12.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (FFAppState()
                                                              .filterHome
                                                              .distance !=
                                                          0.0) {
                                                        FFAppState()
                                                            .updateFilterHomeStruct(
                                                          (e) => e
                                                            ..distance = null,
                                                        );
                                                        FFAppState()
                                                            .update(() {});
                                                        _model.filter = false;
                                                        safeSetState(() {});
                                                        safeSetState(() => _model
                                                                .apiRequestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForApiRequestCompleted1();
                                                      } else {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          useSafeArea: true,
                                                          context: context,
                                                          builder: (context) {
                                                            return WebViewAware(
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  FocusScope.of(
                                                                          context)
                                                                      .unfocus();
                                                                  FocusManager
                                                                      .instance
                                                                      .primaryFocus
                                                                      ?.unfocus();
                                                                },
                                                                child: Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      FilterDistanceWidget(),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));

                                                        _model.filter = true;
                                                        safeSetState(() {});
                                                        safeSetState(() => _model
                                                                .apiRequestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForApiRequestCompleted1();
                                                      }
                                                    },
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: FFAppState()
                                                                    .filterHome
                                                                    .distance !=
                                                                0.0
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : Color(0xFFF7F7F7),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100.0),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'tlhtl7qs' /* DISTÂNCIA */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FFAppState()
                                                                              .filterHome
                                                                              .distance !=
                                                                          0.0
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  fontSize:
                                                                      11.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        1.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Icon(
                                                              FFIcons.karrow41,
                                                              color: FFAppState()
                                                                          .filterHome
                                                                          .distance !=
                                                                      0.0
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              size: 12.0,
                                                            ),
                                                          ),
                                                        ]
                                                            .divide(SizedBox(
                                                                width: 4.0))
                                                            .addToStart(
                                                                SizedBox(
                                                                    width:
                                                                        12.0))
                                                            .addToEnd(SizedBox(
                                                                width: 12.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 8.0)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Builder(
                                              builder: (context) {
                                                final company =
                                                    aquibrazil_library_oi8i5r_data_schema
                                                                    .CompanyWithCategoryStruct
                                                                .maybeFromMap(
                                                                    containerQueryCompanyHomeResponse
                                                                        .jsonBody)
                                                            ?.company
                                                            ?.toList() ??
                                                        [];

                                                return ListView.separated(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: company.length,
                                                  separatorBuilder: (_, __) =>
                                                      SizedBox(height: 12.0),
                                                  itemBuilder:
                                                      (context, companyIndex) {
                                                    final companyItem =
                                                        company[companyIndex];
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (companyItem.type ==
                                                            'entrega') {
                                                          context.pushNamed(
                                                            DeliveryFoodWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'companyId':
                                                                  serializeParam(
                                                                companyItem.id,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        } else {
                                                          context.pushNamed(
                                                            ServiceWidget
                                                                .routeName,
                                                            queryParameters: {
                                                              'company':
                                                                  aquibrazil_library_oi8i5r_serialization_util
                                                                      .serializeParam(
                                                                companyItem,
                                                                aquibrazil_library_oi8i5r_serialization_util
                                                                    .ParamType
                                                                    .DataStruct,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }
                                                      },
                                                      child: CompanyCardWidget(
                                                        key: Key(
                                                            'Keyhka_${companyIndex}_of_${company.length}'),
                                                        company: companyItem,
                                                        membership: aquibrazil_library_oi8i5r_data_schema
                                                                    .HomeStruct
                                                                .maybeFromMap(
                                                                    homeGetHomeResponse
                                                                        .jsonBody)!
                                                            .customer
                                                            .membership
                                                            .hasId(),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                      if (FFAppState().cart.items.length != 0)
                        Align(
                          alignment: AlignmentDirectional(1.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 12.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (FFAppState().cart.company.type ==
                                    'servico') {
                                  context
                                      .pushNamed(Temp7CheckoutWidget.routeName);
                                } else {
                                  context.pushNamed(Cart1Widget.routeName);
                                }
                              },
                              child: Container(
                                width: 85.0,
                                height: 55.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF7F7F7),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Lottie.asset(
                                      'assets/jsons/Bag.json',
                                      width: 28.0,
                                      height: 28.0,
                                      fit: BoxFit.cover,
                                      animate: true,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 2.0, 0.0, 0.0),
                                        child: Container(
                                          width: 22.0,
                                          height: 22.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 1.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    FFAppState()
                                                        .cart
                                                        .items
                                                        .length
                                                        .toString(),
                                                    '0',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 4.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
