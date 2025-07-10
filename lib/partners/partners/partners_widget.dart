import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/order_in_progress/order_in_progress_widget.dart';
import '/membership/without_membership/membership_without/membership_without_widget.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import "package:aquibrazil_library_oi8i5r/flutter_flow/nav/serialization_util.dart"
    as aquibrazil_library_oi8i5r_serialization_util;
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'partners_model.dart';
export 'partners_model.dart';

class PartnersWidget extends StatefulWidget {
  const PartnersWidget({super.key});

  static String routeName = 'partners';
  static String routePath = 'partners';

  @override
  State<PartnersWidget> createState() => _PartnersWidgetState();
}

class _PartnersWidgetState extends State<PartnersWidget> {
  late PartnersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PartnersModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      HapticFeedback.mediumImpact();
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: FutureBuilder<ApiCallResponse>(
          future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
                ..complete(MainGroup.queryCompanyPartnerCall.call(
                  categoryId: _model.selectedCategory?.id,
                  token: currentAuthenticationToken,
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
                    color: FlutterFlowTheme.of(context).primary,
                    size: 35.0,
                  ),
                ),
              );
            }
            final containerQueryCompanyPartnerResponse = snapshot.data!;

            return Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.orderInProgressModel,
                    updateCallback: () => safeSetState(() {}),
                    child: OrderInProgressWidget(),
                  ),
                  Container(
                    width: double.infinity,
                    height: 250.0,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/11808.jpg',
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                _model.selectedCategory = null;
                                safeSetState(() {});
                                safeSetState(
                                    () => _model.apiRequestCompleter = null);
                                await _model.waitForApiRequestCompleted();
                              },
                              child: Container(
                                height: 45.0,
                                decoration: BoxDecoration(
                                  color: valueOrDefault<Color>(
                                    _model.selectedCategory == null
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                  borderRadius: BorderRadius.circular(40.0),
                                  border: Border.all(
                                    color: _model.selectedCategory == null
                                        ? FlutterFlowTheme.of(context).primary
                                        : Color(0xFFB2B2B2),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        FFIcons.kchainlinkLink,
                                        color: _model.selectedCategory == null
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : FlutterFlowTheme.of(context)
                                                .primaryText,
                                        size: 24.0,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'pk6f9005' /* TODOS */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: _model.selectedCategory ==
                                                      null
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondaryBackground
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              final category = aquibrazil_library_oi8i5r_data_schema
                                              .CompanyPartnerCategoryStruct
                                          .maybeFromMap(
                                              containerQueryCompanyPartnerResponse
                                                  .jsonBody)
                                      ?.categoryPartner
                                      ?.toList() ??
                                  [];

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(category.length,
                                    (categoryIndex) {
                                  final categoryItem = category[categoryIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.selectedCategory = categoryItem;
                                        safeSetState(() =>
                                            _model.apiRequestCompleter = null);
                                        await _model
                                            .waitForApiRequestCompleted();
                                      },
                                      child: Container(
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: valueOrDefault<Color>(
                                            _model.selectedCategory ==
                                                    categoryItem
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                          border: Border.all(
                                            color: _model.selectedCategory ==
                                                    categoryItem
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : Color(0xFFB2B2B2),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 8.0, 16.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                                child: SvgPicture.network(
                                                  valueOrDefault<String>(
                                                    categoryItem.url,
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aqui-brazil-xano-dhyxe1/assets/ulprvwhmm3tl/Gluten.svg',
                                                  ),
                                                  width: 20.0,
                                                  height: 20.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  FFLocalizations.of(context)
                                                      .getVariableText(
                                                    ptText:
                                                        functions.toUpperCase(
                                                            categoryItem.name),
                                                    enText:
                                                        functions.toUpperCase(
                                                            categoryItem
                                                                .nameEn),
                                                    esText:
                                                        functions.toUpperCase(
                                                            categoryItem
                                                                .nameEs),
                                                  ),
                                                  '-',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color: _model
                                                                  .selectedCategory ==
                                                              categoryItem
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryBackground
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
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
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }).divide(SizedBox(width: 8.0)),
                              );
                            },
                          ),
                        ]
                            .divide(SizedBox(width: 8.0))
                            .addToStart(SizedBox(width: 12.0)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final companyPartner =
                            aquibrazil_library_oi8i5r_data_schema
                                            .CompanyPartnerCategoryStruct
                                        .maybeFromMap(
                                            containerQueryCompanyPartnerResponse
                                                .jsonBody)
                                    ?.companyPartner
                                    ?.toList() ??
                                [];
                        if (companyPartner.isEmpty) {
                          return Center(
                            child: EmptyListWidget(
                              header: FFLocalizations.of(context).getText(
                                'aaa00w6k' /* CATEGORIA VAZIA */,
                              ),
                              content: FFLocalizations.of(context).getText(
                                'yxeej7cy' /* EM BREVE */,
                              ),
                            ),
                          );
                        }

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: companyPartner.length,
                          separatorBuilder: (_, __) => SizedBox(height: 16.0),
                          itemBuilder: (context, companyPartnerIndex) {
                            final companyPartnerItem =
                                companyPartner[companyPartnerIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (aquibrazil_library_oi8i5r_data_schema
                                              .CompanyPartnerCategoryStruct
                                          .maybeFromMap(
                                              containerQueryCompanyPartnerResponse
                                                  .jsonBody)!
                                      .customer
                                      .membership
                                      .hasId()) {
                                    unawaited(
                                      () async {
                                        await MainGroup.insertAnalyticsCall
                                            .call(
                                          pageId: companyPartnerItem.id,
                                          eventName: 'page_partner',
                                          token: currentAuthenticationToken,
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
                                              .ParamType.DataStruct,
                                        ),
                                      }.withoutNulls,
                                    );
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
                                              FocusScope.of(context).unfocus();
                                              FocusManager.instance.primaryFocus
                                                  ?.unfocus();
                                            },
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: MembershipWithoutWidget(),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));

                                    return;
                                  }
                                },
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF4F4F4),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            child: Image.network(
                                              companyPartnerItem
                                                  .profilePhotoUrl,
                                              width: 55.0,
                                              height: 55.0,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  functions.toUpperCase(
                                                      companyPartnerItem.name),
                                                  '-',
                                                ).maybeHandleOverflow(
                                                  maxChars: 30,
                                                  replacement: '…',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.black,
                                                          fontSize: 13.0,
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
                                              Text(
                                                valueOrDefault<String>(
                                                  companyPartnerItem
                                                      .description,
                                                  '-',
                                                ).maybeHandleOverflow(
                                                  maxChars: 32,
                                                  replacement: '…',
                                                ),
                                                maxLines: 1,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  '${formatNumber(
                                                    companyPartnerItem.distance,
                                                    formatType:
                                                        FormatType.custom,
                                                    format: '###.#',
                                                    locale: '',
                                                  )} MILHAS',
                                                  '0',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            FFIcons.karrowSquareRight,
                                            color: Color(0xFF14181B),
                                            size: 20.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
