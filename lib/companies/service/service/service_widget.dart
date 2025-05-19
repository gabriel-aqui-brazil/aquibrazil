import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/companies/service/select_service/select_service_widget.dart';
import '/components/banner_aqui_pass_company/banner_aqui_pass_company_widget.dart';
import '/components/info_company_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'service_model.dart';
export 'service_model.dart';

class ServiceWidget extends StatefulWidget {
  const ServiceWidget({
    super.key,
    this.company,
  });

  final aquibrazil_library_oi8i5r_data_schema.CompanyStruct? company;

  static String routeName = 'service';
  static String routePath = 'service';

  @override
  State<ServiceWidget> createState() => _ServiceWidgetState();
}

class _ServiceWidgetState extends State<ServiceWidget> {
  late ServiceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
            ..complete(MainGroup.queryServiceCall.call(
              companyId: widget!.company?.id,
              token: currentAuthenticationToken,
              sessionId:
                  _model.sessionSelected != null && _model.sessionSelected != ''
                      ? _model.sessionSelected
                      : '',
            )))
          .future,
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
        final serviceQueryServiceResponse = snapshot.data!;

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
                  height: 330.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 330.0,
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.network(
                                aquibrazil_library_oi8i5r_data_schema
                                            .SessionServiceStruct
                                        .maybeFromMap(
                                            serviceQueryServiceResponse
                                                .jsonBody)!
                                    .company
                                    .coverPhotoUrl,
                                width: double.infinity,
                                height: 220.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 54.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FlutterFlowIconButton(
                                    borderRadius: 100.0,
                                    borderWidth: 1.0,
                                    buttonSize: 44.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      context.pushNamed(HomeWidget.routeName);
                                    },
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (aquibrazil_library_oi8i5r_data_schema
                                                          .SessionServiceStruct
                                                      .maybeFromMap(
                                                          serviceQueryServiceResponse
                                                              .jsonBody)
                                                  ?.company
                                                  ?.favoriteCompany
                                                  ?.id !=
                                              null &&
                                          aquibrazil_library_oi8i5r_data_schema
                                                          .SessionServiceStruct
                                                      .maybeFromMap(
                                                          serviceQueryServiceResponse
                                                              .jsonBody)
                                                  ?.company
                                                  ?.favoriteCompany
                                                  ?.id !=
                                              '') {
                                        return Container(
                                          width: 44.0,
                                          height: 44.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 3.0, 2.0, 0.0),
                                              child: FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 8.0,
                                                buttonSize: 44.0,
                                                icon: Icon(
                                                  FFIcons.kcoracaoBranco,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 18.0,
                                                ),
                                                showLoadingIndicator: true,
                                                onPressed: () async {
                                                  _model.apiResulteqaCopy =
                                                      await MainGroup
                                                          .removeFavoriteCompanyCall
                                                          .call(
                                                    companyId:
                                                        widget!.company?.id,
                                                    token:
                                                        currentAuthenticationToken,
                                                  );

                                                  if ((_model.apiResulteqaCopy
                                                          ?.succeeded ??
                                                      true)) {
                                                    safeSetState(() => _model
                                                            .apiRequestCompleter =
                                                        null);
                                                    await _model
                                                        .waitForApiRequestCompleted();
                                                  }

                                                  safeSetState(() {});
                                                },
                                              ),
                                            ),
                                          ),
                                        );
                                      } else {
                                        return Container(
                                          width: 44.0,
                                          height: 44.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 3.0, 2.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 8.0,
                                              buttonSize: 44.0,
                                              icon: Icon(
                                                FFIcons.kcoraBorda,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 18.0,
                                              ),
                                              showLoadingIndicator: true,
                                              onPressed: () async {
                                                _model.apiResult8ey =
                                                    await MainGroup
                                                        .insertFavoriteCompanyCall
                                                        .call(
                                                  companyId:
                                                      widget!.company?.id,
                                                  token:
                                                      currentAuthenticationToken,
                                                );

                                                if ((_model.apiResult8ey
                                                        ?.succeeded ??
                                                    true)) {
                                                  safeSetState(() => _model
                                                          .apiRequestCompleter =
                                                      null);
                                                  await _model
                                                      .waitForApiRequestCompleted();
                                                }

                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Container(
                                width: double.infinity,
                                height: 75.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          _model.sessionSelected = null;
                                          safeSetState(() {});
                                          safeSetState(() => _model
                                              .apiRequestCompleter = null);
                                          await _model
                                              .waitForApiRequestCompleted();
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '4l71pn31' /* TODOS */,
                                        ),
                                        options: FFButtonOptions(
                                          height: 50.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: _model.sessionSelected ==
                                                      null ||
                                                  _model.sessionSelected == ''
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0xFFF7F7F7),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: _model.sessionSelected ==
                                                            null ||
                                                        _model.sessionSelected ==
                                                            ''
                                                    ? Colors.white
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Builder(
                                            builder: (context) {
                                              final session =
                                                  aquibrazil_library_oi8i5r_data_schema
                                                                  .SessionServiceStruct
                                                              .maybeFromMap(
                                                                  serviceQueryServiceResponse
                                                                      .jsonBody)
                                                          ?.sessions
                                                          ?.toList() ??
                                                      [];

                                              return ListView.separated(
                                                padding: EdgeInsets.fromLTRB(
                                                  12.0,
                                                  0,
                                                  12.0,
                                                  0,
                                                ),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: session.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(width: 8.0),
                                                itemBuilder:
                                                    (context, sessionIndex) {
                                                  final sessionItem =
                                                      session[sessionIndex];
                                                  return FFButtonWidget(
                                                    onPressed: () async {
                                                      _model.sessionSelected =
                                                          sessionItem.id;
                                                      safeSetState(() {});
                                                      safeSetState(() => _model
                                                              .apiRequestCompleter =
                                                          null);
                                                      await _model
                                                          .waitForApiRequestCompleted();
                                                    },
                                                    text: functions.toUpperCase(
                                                        sessionItem.name),
                                                    options: FFButtonOptions(
                                                      height: 50.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: sessionItem.id ==
                                                              _model
                                                                  .sessionSelected
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : Color(0xFFF7F7F7),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: sessionItem
                                                                            .id ==
                                                                        _model
                                                                            .sessionSelected
                                                                    ? Colors
                                                                        .white
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.0),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 105.0, 0.0, 0.0),
                                child: Container(
                                  width: 55.0,
                                  height: 55.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child: Image.network(
                                      aquibrazil_library_oi8i5r_data_schema
                                                  .SessionServiceStruct
                                              .maybeFromMap(
                                                  serviceQueryServiceResponse
                                                      .jsonBody)!
                                          .company
                                          .profilePhotoUrl,
                                      width: 50.0,
                                      height: 50.0,
                                      fit: BoxFit.cover,
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
                Expanded(
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 24.0, 12.0, 8.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
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
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                1.0,
                                            child: InfoCompanyWidget(
                                              company: aquibrazil_library_oi8i5r_data_schema
                                                          .SessionServiceStruct
                                                      .maybeFromMap(
                                                          serviceQueryServiceResponse
                                                              .jsonBody)!
                                                  .company,
                                              customer: aquibrazil_library_oi8i5r_data_schema
                                                          .SessionServiceStruct
                                                      .maybeFromMap(
                                                          serviceQueryServiceResponse
                                                              .jsonBody)!
                                                  .customer,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Container(
                                width: double.infinity,
                                height: 75.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: Color(0xFFF0F0F0),
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 16.0, 12.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              functions.toUpperCase(
                                                  aquibrazil_library_oi8i5r_data_schema
                                                              .SessionServiceStruct
                                                          .maybeFromMap(
                                                              serviceQueryServiceResponse
                                                                  .jsonBody)
                                                      ?.company
                                                      ?.name),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                                        fontSize: 14.0,
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
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    2.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          functions.toUpperCase(aquibrazil_library_oi8i5r_data_schema
                                                                      .SessionServiceStruct
                                                                  .maybeFromMap(
                                                                      serviceQueryServiceResponse
                                                                          .jsonBody)
                                                              ?.company
                                                              ?.terciaryCategory
                                                              ?.name),
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
                                                                color: Color(
                                                                    0xFF808080),
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
                                                    ),
                                                    SizedBox(
                                                      height: 12.0,
                                                      child: VerticalDivider(
                                                        width: 3.0,
                                                        thickness: 0.7,
                                                        color:
                                                            Color(0xFF808080),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    2.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '${valueOrDefault<String>(
                                                            formatNumber(
                                                              widget!.company
                                                                  ?.distance,
                                                              formatType:
                                                                  FormatType
                                                                      .decimal,
                                                              decimalType:
                                                                  DecimalType
                                                                      .periodDecimal,
                                                            ),
                                                            '0',
                                                          )} MILHAS',
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
                                                                color: Color(
                                                                    0xFF808080),
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
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 4.0)),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ),
                                      if (false)
                                        Container(
                                          width: 60.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            border: Border.all(
                                              color: Color(0xFFEEEEEE),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 2.0,
                                                                0.0, 0.0),
                                                    child: Icon(
                                                      FFIcons.kcaminho2395,
                                                      color: Color(0xFFFFBC24),
                                                      size: 12.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 2.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5fqpjxom' /* 4.5 */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .inter(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            fontSize: 14.0,
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
                                                ].divide(SizedBox(width: 4.0)),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ysw0gsx9' /* 120 */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize: 10.0,
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
                                            ],
                                          ),
                                        ),
                                      Icon(
                                        FFIcons.karrowSquareRight,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 20.0,
                                      ),
                                    ].divide(SizedBox(width: 12.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (aquibrazil_library_oi8i5r_data_schema
                                              .SessionServiceStruct
                                          .maybeFromMap(
                                              serviceQueryServiceResponse
                                                  .jsonBody)
                                      ?.productPromotional !=
                                  null &&
                              (aquibrazil_library_oi8i5r_data_schema
                                              .SessionServiceStruct
                                          .maybeFromMap(
                                              serviceQueryServiceResponse
                                                  .jsonBody)
                                      ?.productPromotional)!
                                  .isNotEmpty)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '0udgrwog' /* OFERTAS IMPERDÍVEIS! APROVEITE... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Anton',
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 245.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Builder(
                                      builder: (context) {
                                        final productPromo =
                                            aquibrazil_library_oi8i5r_data_schema
                                                            .SessionServiceStruct
                                                        .maybeFromMap(
                                                            serviceQueryServiceResponse
                                                                .jsonBody)
                                                    ?.productPromotional
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
                                          itemCount: productPromo.length,
                                          separatorBuilder: (_, __) =>
                                              SizedBox(width: 12.0),
                                          itemBuilder:
                                              (context, productPromoIndex) {
                                            final productPromoItem =
                                                productPromo[productPromoIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
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
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          FocusScope.of(context)
                                                              .unfocus();
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        },
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child: Container(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.93,
                                                            child:
                                                                SelectServiceWidget(
                                                              baseProduct:
                                                                  productPromoItem,
                                                              company: widget!
                                                                  .company,
                                                              hasMoreService:
                                                                  aquibrazil_library_oi8i5r_data_schema.SessionServiceStruct.maybeFromMap(serviceQueryServiceResponse.jsonBody)!
                                                                              .service
                                                                              .length >
                                                                          1
                                                                      ? true
                                                                      : false,
                                                              customer: aquibrazil_library_oi8i5r_data_schema
                                                                          .SessionServiceStruct
                                                                      .maybeFromMap(
                                                                          serviceQueryServiceResponse
                                                                              .jsonBody)!
                                                                  .customer,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: Container(
                                                width: 150.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 150.0,
                                                      height: 135.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: Stack(
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      24.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          24.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      24.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      24.0),
                                                            ),
                                                            child:
                                                                Image.network(
                                                              productPromoItem
                                                                  .image
                                                                  .firstOrNull!
                                                                  .url,
                                                              width: 300.0,
                                                              height: 200.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, 1.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    15.0,
                                                                borderWidth:
                                                                    0.0,
                                                                buttonSize:
                                                                    40.0,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                icon: Icon(
                                                                  Icons.add,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: 24.0,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(context).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                Container(
                                                                              height: MediaQuery.sizeOf(context).height * 0.93,
                                                                              child: SelectServiceWidget(
                                                                                baseProduct: productPromoItem,
                                                                                company: widget!.company,
                                                                                hasMoreService: aquibrazil_library_oi8i5r_data_schema.SessionServiceStruct.maybeFromMap(serviceQueryServiceResponse.jsonBody)!.service.length > 1 ? true : false,
                                                                                customer: aquibrazil_library_oi8i5r_data_schema.SessionServiceStruct.maybeFromMap(serviceQueryServiceResponse.jsonBody)!.customer,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          if (productPromoItem
                                                                  .individualDiscount !=
                                                              0.0)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      -1.0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            100.0),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            3.0),
                                                                        child: Lottie
                                                                            .asset(
                                                                          'assets/jsons/Fire_(2).json',
                                                                          width:
                                                                              20.0,
                                                                          height:
                                                                              20.0,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                          animate:
                                                                              true,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        functions.toUpperCase(
                                                            productPromoItem
                                                                .name),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
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
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            formatNumber(
                                                              productPromoItem
                                                                  .price,
                                                              formatType:
                                                                  FormatType
                                                                      .custom,
                                                              currency: '\$',
                                                              format:
                                                                  '##,###.00',
                                                              locale: 'en_us',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .roboto(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF61C360),
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          if (aquibrazil_library_oi8i5r_data_schema
                                                                          .SessionServiceStruct
                                                                      .maybeFromMap(
                                                                          serviceQueryServiceResponse
                                                                              .jsonBody)
                                                                  ?.customer
                                                                  ?.membership
                                                                  ?.hasId() ??
                                                              true)
                                                            Text(
                                                              formatNumber(
                                                                productPromoItem
                                                                    .originalPrice,
                                                                formatType:
                                                                    FormatType
                                                                        .custom,
                                                                currency: '\$',
                                                                format:
                                                                    '##,###.00',
                                                                locale: 'en_us',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .roboto(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Color(
                                                                        0xFF666666),
                                                                    fontSize:
                                                                        13.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                    decoration:
                                                                        TextDecoration
                                                                            .lineThrough,
                                                                  ),
                                                            ),
                                                        ].divide(SizedBox(
                                                            width: 6.0)),
                                                      ),
                                                    ),
                                                    if (!aquibrazil_library_oi8i5r_data_schema
                                                                .SessionServiceStruct
                                                            .maybeFromMap(
                                                                serviceQueryServiceResponse
                                                                    .jsonBody)!
                                                        .customer
                                                        .membership
                                                        .hasId())
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'dbie9m49' /* COM AQUIPASS VOCÊ ECONOMIZA */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        10.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              formatNumber(
                                                                productPromoItem
                                                                    .aquipassSavedPrice,
                                                                formatType:
                                                                    FormatType
                                                                        .custom,
                                                                currency: '\$',
                                                                format:
                                                                    '##,###.00',
                                                                locale: 'en_us',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .roboto(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Color(
                                                                        0xFF61C360),
                                                                    fontSize:
                                                                        13.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  ].divide(
                                                      SizedBox(height: 1.0)),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ].divide(SizedBox(height: 12.0)),
                              ),
                            ),
                          if (!aquibrazil_library_oi8i5r_data_schema
                                      .SessionServiceStruct
                                  .maybeFromMap(
                                      serviceQueryServiceResponse.jsonBody)!
                              .customer
                              .membership
                              .hasId())
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 16.0),
                              child: wrapWithModel(
                                model: _model.bannerAquiPassCompanyModel,
                                updateCallback: () => safeSetState(() {}),
                                child: BannerAquiPassCompanyWidget(
                                  discount:
                                      aquibrazil_library_oi8i5r_data_schema
                                                  .SessionServiceStruct
                                              .maybeFromMap(
                                                  serviceQueryServiceResponse
                                                      .jsonBody)!
                                          .company
                                          .defaultDiscount,
                                ),
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Builder(
                                    builder: (context) {
                                      final service =
                                          aquibrazil_library_oi8i5r_data_schema
                                                          .SessionServiceStruct
                                                      .maybeFromMap(
                                                          serviceQueryServiceResponse
                                                              .jsonBody)
                                                  ?.service
                                                  ?.toList() ??
                                              [];

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: service.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 5.0),
                                        itemBuilder: (context, serviceIndex) {
                                          final serviceItem =
                                              service[serviceIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Divider(
                                                height: 5.0,
                                                thickness: 0.7,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 12.0, 0.0, 12.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Flexible(
                                                        child: Column(
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
                                                              functions
                                                                  .toUpperCase(
                                                                      serviceItem
                                                                          .name),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Color(
                                                                        0xFF252525),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  formatNumber(
                                                                    serviceItem
                                                                        .price,
                                                                    formatType:
                                                                        FormatType
                                                                            .custom,
                                                                    currency:
                                                                        '\$',
                                                                    format:
                                                                        '#,##0.00',
                                                                    locale:
                                                                        'en_us',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .roboto(
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Color(
                                                                            0xFF61C360),
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                                if (serviceItem
                                                                        .originalPrice !=
                                                                    serviceItem
                                                                        .price)
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        formatNumber(
                                                                          serviceItem
                                                                              .originalPrice,
                                                                          formatType:
                                                                              FormatType.custom,
                                                                          currency:
                                                                              '\$',
                                                                          format:
                                                                              '#,##0.00',
                                                                          locale:
                                                                              'en_us',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.roboto(
                                                                                fontWeight: FontWeight.normal,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: Color(0xFF666666),
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              decoration: TextDecoration.lineThrough,
                                                                            ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            24.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFC9F36C),
                                                                          borderRadius:
                                                                              BorderRadius.circular(100.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              2.0,
                                                                              4.0,
                                                                              2.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Icon(
                                                                                Icons.arrow_downward,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                size: 10.0,
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  '${serviceItem.aquipassSavedPercentage.toString()}%',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ].divide(SizedBox(width: 2.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            8.0)),
                                                                  ),
                                                              ].divide(SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                            if (!aquibrazil_library_oi8i5r_data_schema
                                                                        .SessionServiceStruct
                                                                    .maybeFromMap(
                                                                        serviceQueryServiceResponse
                                                                            .jsonBody)!
                                                                .customer
                                                                .membership
                                                                .hasId())
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Lottie
                                                                        .asset(
                                                                      'assets/jsons/star-badge.json',
                                                                      width:
                                                                          20.0,
                                                                      height:
                                                                          20.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      animate:
                                                                          true,
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          2.0),
                                                                      child:
                                                                          RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: FFLocalizations.of(context).getText(
                                                                                'xscxrgls' /* COM A AQUIPASS VOCÊ ECONOMIZA  */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.inter(
                                                                                      fontWeight: FontWeight.normal,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 10.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: formatNumber(
                                                                                serviceItem.aquipassSavedPrice,
                                                                                formatType: FormatType.custom,
                                                                                currency: '\$',
                                                                                format: '#,##0.00',
                                                                                locale: 'en_us',
                                                                              ),
                                                                              style: GoogleFonts.roboto(
                                                                                color: Color(0xFF61C360),
                                                                                fontSize: 13.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.inter(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                fontSize: 13.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          4.0)),
                                                                ),
                                                              ),
                                                            Builder(
                                                              builder:
                                                                  (context) {
                                                                final image =
                                                                    serviceItem
                                                                        .image
                                                                        .toList();

                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: List
                                                                      .generate(
                                                                          image
                                                                              .length,
                                                                          (imageIndex) {
                                                                    final imageItem =
                                                                        image[
                                                                            imageIndex];
                                                                    return ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                      child: Image
                                                                          .network(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          imageItem
                                                                              .url,
                                                                          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUSEhMVFRUVFRUVFRcVFRYWFxUVFRUXFxUVFhUYHSggGBolHxUVITEhJSkrLi4uFyAzODMsNygtLisBCgoKDg0OGxAQGy0lHyUtLS0tMjYtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKgBLAMBEQACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAADBAIFAAEGBwj/xABJEAACAQIDBQQGBgYIBAcAAAABAgMAEQQSIQUxQVFxBhNhgSIyQpGhwQcUUpKx0UNicoKi8CMzU1STwtLhFhey0xUkNHODo/H/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAgMEAQUG/8QAOBEAAgECAgYHBwQCAwEAAAAAAAECAxEEIQUSMUFRkRMUFTJhgaEiQlJxsdHwI8HS4UPxM1OiYv/aAAwDAQACEQMRAD8A9RRqAYQ0AdGoA6mgDKaAmKA3QGUBlAZQGUBlAZQGUBlAaNAQNARagI0BgoCdATFAbFAboCEcoJYD2TlPWwPnoRQE6AygMoDKAygMoDKAixoATmgAuaAA5oBeRqAAWoCMbUAxG1AMIaAOjUAZTQBVNAToDKAygMoDKAygMoDKAygImgIGgImgIPIBvIHUgfjS51JvYKybWw6+tPCvWVB86i5xW1lkaNSWyL5MWbtVgRvxeH8pkP4GudLDii1YHEv/ABy5MgO2Oz/73D98VzpqfEl2fiv+t8jf/GWA/vcP3xTpqfEdn4r/AK3yIYnttgFRnGJibKpOVXBZrD1VXeSa70sOKIvA4lf45cmNbI2thu7UDEwO3rMVlQ3djmc6HdcmuqcXsZVLD1Y96LXky2SQHcQehvUipqxK9AZegMoDKAygNE0ANmoALGgAu1ALu1ALu1AAZqAhG1AMo1AMI1AHRqAOrUAVWoAqmgJUBlAZQGUBlAZQGmYDfQHLbV+kHZ8NwZ1dhwQqdRvG/Wo62WRZ0TvaTSORx/0wpr3Ma9WEjE/u2UfGo3qPYkaIwwq702/krfUopvpKxc2iNKPCOKNf4rsRUHCq/eLY18HHZTb+bE8RtTGy6sZ+jYoj+FV+VRdCT2yZdHSdOHdox9BP6kzG7ohPNpHf4lBXOqx4li05NbIJfIajwSD2IvdJ8nFOqwIPTdd7voMqkQ/RRHqZv+5Ulhooi9MV3v8AzkEDxf3eA/43/cp1aBHtet4+hrPDxwsJ6NMP89Orx4He163jzX8SExw1rjCqDz7+W3uN64sPDedemK9sn6L7I6xdkYQxR5YnDyKCqK4Qi4BJYqNFFxc2PQkgVFwi1sL1WrKTzuuLzOS21iMPhZMq4lL7zlUKR0ck5+oUbqj0UvdLXjqVrVcvK/pbLmZsztdM9xh8XMSu8F1P8LDdUlCqv9lTxGAntX/lr6D+F+k7GROUdoZSLXVwFfUA+tGeR5U160dqOdWwFXKnOz/OP9HddmfpDw2KZYnBglbQK5BV2PBJBoT4EA1bCvGWWxmTFaNq0VrJ60fz8ybOyq4840TQEGagBM1ABdqAA7UAu7UAvI1ALs1AQjagGY2oBlGoA6NQB0agDK1AEVqAKDQEqAygMoDKArNv7dgwcRlncKo3DezHgqrvJodSueE9s/pFxOMJVCYYeCKfSYfrsPwHvNctvJa2VonK4PAPJqBlHM6Dy510gXmE2XEmp9M/rbvJf/2gLETgaDQeFAZ9aoCJxVADfFUBA4mgNfWaA2MVQBdljv51T2R6T/srvHmbDzqupK0TThKXSVPBZnU9oNtfV8LPiT6x/ooh7xp1N9Rwy8qqpq7PQxUujhl+M8Vl7xyWY3Lak31N+NaTxhnYmI7qdDffdG6Nu+NqA32pQ9+SdQwUjwsMpH8PxoDWwpmZimY3tdDc3Vl1Fj/NrVVVgpK+83YLFypTUW/ZeTXzPqnsjtf61g4MRcEugz2/tF9GT+IGpwlrRTM+IpdFVlDgy1ZqkUgmNACdqAC7UAu7UACRqAVkagF2agIRvQDMb0Ayj0AwjUAdGoAytQBlagCBqAmGoCQNAbvQHNdt+2UGz4sznNKwPdRA+kx5nko4muNkksrvYfPO3tv4jHTGSZszH1VHqRjko/E8elgCRxu5PB4FV1b0m+A6DjXThYd/QETiKAicRQETPQETiKAiZ6AiZ6A139AafE2FAdV2OwxWF5vak0XoDZfexPwrLVleR7WAp6tLW3y+gh9K8wWPDwi9k1I8SptfyFW0llcx46prSSPP0mJAA47gN5tVphF3ikT0ijLY3BKsBcG41NAXnaCzokg9/gwv8qApcDPkkVuRF+m4/AmgPoP6GtpejicKT6jrMg5JMNQOhA+9VNLJuJ6OOWtGnV4rPyPRmarjzgTNQAXagAu9ALu9ALyNQC0j0As8lADiegGo3oBqNqAYR6AOjUAZGoAytQBVagJhqAmGoDxja30h4g4nFEZmjjkkhgijLIWMbZSSUNzqLkndcDkDxkkt7PPNoHF4mSSadXeVuLGxAG5UVjcqN2l/M0scbbI4SDu9GBDnfcWI8LV04H76gNd6aAwOd1ASaNhvt95fzoAUjkGxBHWgB99QGu9oDO8oCLS0BDNmYLzPu8ajJ2VyylTdSagt7Ov2Dj55llgUgIkDslgFKd3bJ6Q1ve1efGTk2fYVaNOjGL8Uim7YTviO9fIxyiMEhSQrKoupI3HR63UneCZ8tjoaleS/LbhnYkk8UMcMQ+rtlDSmwWR2YkgknW1rWFWGQtUWQC74yUfvm3x0oDme0uM70mNbSMq3DoqhnsRowQWZhqL2vrrQFFgtiSMw7wd2hIzE+sFvrZN97cLVxtLaThCUnaKuz0HsNtgwbSEigCOQ9yyk/oyAI7HiQVTU7/Oskaq6X5n0OIwUo4JRe2Kv9z3fvARcG4OoNbD5sGzUAF3oALtQC8j0AtI9AKyPQCzvQA4pKAajegGo3oBlHoA6PQB1agDK1AZiMWkal5HVFG9nYKB5muNpK7JQhKb1Yq7OYx30h4dbjDo+II4qMkY6u3yBqiWJgtmZ6lLQ9eWdS0fV8jmsX9JOLLeisSr9lQzH/EJ/BaoeKluR6MdC0bZyd/L6Hn238E2LxD4iR2DPbTeBYAWBPS/UmurFPgceg6fxvkhaPs+ttZJfIjTyOld62+BB6Dh8b5Is0iYLlMzOLWAkijax5g771zrb4DsOHxP0JRyADKwDAcs0Z13/ANWy062+B3sKG6b5IIyYQjVcUp/UxD29zsal1vwK3oF/H6C0uFwvsy41erxsPxFOtrgc7Bn8f1EF2ZCDf6xP92IHyOaudbXAl2DL4vzkMphoxp9ZxXQiIj7pY1JYxcCPYM901yD4fANIcsN5TxDYeHTqyWsPEmnWr7InJaFUM6lRLyLpOyceW8ty/wBjDQTS28C6vkv0NT6bLNGV6OTl7MsuLsvRu4L/AIKDboNoL0jhHwdiR7670z+FnXo6mv8ALH88hnC/R5Ex/pGxcQ5yNhgfuqGNFVfArngYpezO/wAr/VpIZbs3s3BkCTvZiVdgWNj6LKCCFsLEPv03GoVKqtZmnB4Galrwea/co9pdpo7MuFwsESnTMUDyEc8z3tWbX4I9uOFsr1JuXnkc7/4w8S+hm9M8JJFF7DeEYZtb7+VbKHdsfO6VX6ykt6+n9ETFi2u2ZFJOtmuR4s4BA82vVspRjtZgpUalV2hFv5Azsl2N5Zr9LsfvE2/Gs8sVBbMz1aOhK085tR9WWGEwyRiyqCT7Tekw5W4D3VnliZvZketR0NhoZyvJ+P2NyPff/t5DhVDbe09KFOFNWgkl4EYsw9MFQFuQWYC7LYhQN5O6roU21rLcZcRiqUJKlP3srb88uR7b9Hm3XxeFMjgArK6CxJuAFYHX9qvQhK6ufH4ml0U9U6N3qZQBdqAXd6AXkegFpHoBWV6AVeTWgBRPQDcb0A1G9ANRvQB0egGFegOO2328AJjwmVyNDKdUB/UHtdd3WslXE2donu4PQ7ktevkuG/zZyuKgkkbvcY7yMNyuTp4Zdy9ABWaV5ZyPZp6kI6tFJLw3/cXnZm0GijcBoKi2WxSXzC4LYssv9XG7+KqSPM7hXVCT2IjUxEId6SRd4bsNim9ZUT9phf3LerFQkY5aTorZd+RYQ9gPtzj91L/En5VNYfiyiWlfhj6jkfYXCj1nlbzVf8tS6vHeVPSdd7EgydjcAP0bN1kf5EV3oYIg9I4l71yQwnZrAjdhoz+0C3/UTUujhwIdbxL99hWwGDiUuYcPGo3sUjUDqxFNSK3Ih0tabtrSfmwWH2ir/wDpYc43Z8vdR/usRdh4qCPGikn3UJU3H/klbw2v7fmwhjcIHH/nJUy/YFkS3izHM3mbeFccU+8yUJuL/STvx/MhUdotnYcWR4tNwiGe3TLcCo9JTjsLup4qpm0/Mrsf9JEY/qYmbxchR7heoSxPBF9PREvflyEdndqsTiXszWXkosPzqKqykX1MFSpK6RcYvECKNpG4DQcWJ3AeJNTbsrmaEXOSijy/bO0XnbMxJ1IJ9nnlXwGnvvVDeV2evTpqPsxKyeEnp4VyLsSqQ1iCQ6ai9jx187e/31b0kksmZXgqc5J1I34FishO81nebzN8YxirJWNMwrh03DkJBeUKmtwPSkNhvVB+JIG+tFOjrK7yR52Lx/Q1NSKcpW2CU8tyev41DVSNfSNxVyECFjlULdrC5G7XTXhrUr2KZRu7pZ8T2P6KMfGcIYBo8TMX/WDkkP8A5f3a14ealGx87pfDyp1td7Jfsdkz1oPJAO9AAd6AWkegFZHoBWV6AVd6AFE9ANxvQDcclAMxvQDCPQHn/b7tM7O2EiuqLpKwOrki+Qcl1157t2/Fiarvqo+l0PgIaqxEs3u8P7OWwchQhlNiCCOo1FY07Zo92UVJWZdSbfVyWliDMSSSrlLkm5NiGqxzvtRkWFcVaMvRP7Fhge1+Fi1GBUnm0uc/xJYeVTjVivd9Smpga1TbV9LfRln/AM0hu+rEdJR/pqfWfAy9jf8A36GH6Tk44d/vj8qdZXA72O/iXIj/AMy4v7CT7y06yuB3smXxL1Nf8yIf7GT3p+dOsLgOyZ/EvU0fpIi/sJPvLXOnXA72VP4l6i8/0mfYww/fkv8AAL86PEcESWifinyRzO0+12ImkEh7tWHq2QNl/Z7zNlPiLVW6rbubKWBpU46qvb5/awhiu0OLk9fESn98ge4VzWk9rLY4elDuxRXPKSbkknmdT765YtvbJEc5rlhdkxKB6xt1ooOTyRCpWp01eckjpuzuPEWpUC4uC5y6cTlALfAda00sPLfkeJjdK0ZLVp3fovX7ANvbe7698zAaKdUjBPFUuS2nFj5VfOnGMW95gwuLq1K0YJ2Tefy+e0558dew1a2gA3DwA3DyrDqSltPpXXpwygrkTjSPWRgP55iu9FwZHrbWbi7EkkB3cdKjqtZF8akZrWRnf01SWugbSXruqRczcWJK5rW9IZSbC9jvAqVimTTAs1dIuQaJ7CoSRoptJHY9lsScHjYXdrd+tpVt6iyC6FjwObKd2gOtq2UKTjaR83pLHwrXo22bH4/Y9cd60niAHegF5JKAXkegFZZKAUlegFWegAxSUA3FJQDcclANRyUBraGLMcTuN6qbddwoDznsfgI8XI4lJF87XFs2mu8/tA7tbVCdOM9qNFDFVqD/AE5W+nIhtnZTpKY8P/TBRd9MpTNfKp9LU2GtudUPCw3XPRjpyuu8k+aKeaHEjfA3ub5Kaj1NcS9aelvprn/TF2aUb4mHk3zWo9UfEtjp6G+D5/0iDTMN6EeY+dc6pLiifb1H4Jen3IfWvA+9fzp1SXFHe3qHwy9P5GxihyPvT/VXOqT4o6tO4f4Zcl/ImJvD4r+dOqzJduYbhLkv5EXmtwPkVP8Amp1WfgcenMPuUuS/kZgXMriNFbMb+tlUaeJNq71WS3oj27R3Rl6fdje1tmzwBTJFo17HMLaePnXY4a+8hU05GOyD52/ZhNibIknkWNmjhzC4MjG1ugF/CrFhY8TNLTtT3YLmzotr9hTh2QPLnDm39ChYrv3g34D41NYeBnlpnFPY0vIrJuy0pQGNZc29gylQPSIUAgDgNetWKlBbjJPHYifem/p9CgnwfcswljCuNTc2sN24ampmZtvNkUnMjCJFN2t4cPDx11PWuNpK7JU6cpy1Yq7O22H2HWUBpplsosUhcMRzzMLgHnb4VmnPX+R69Ch1bNq8n5JfLiXm2pMLs+LJBEiysLXtdrcLsddfw6iqqklFWRuwtKdeetJ5I84xU17k6k6nxJ31mWeZ7eSyETYbhxqxX3meaUVkiF6kV6xq9A5Gr12xFswUOLMc2LEHmUP6gJZ/2EGZvgCPOpQhrSRnxOIdOlKW+3q8hLtFtdnlJPrMS7eBfVVHRcorefJn0Js7Fd5DFJ9uKN/vID86Ak70Au70AtJJQCkklAKyvQCryUAGGSgHIpKAbjkoBmN6AS7QY2NYWjZ1V3UhAeJ4aDnuv41CVRRsmX0sNUqxlKKyW084wMkkatlzK4JdSptwt6w1t8Na4qsHLVvmWPA11T6TVy2i+Nw+KSPvAWdn9JgLNck3JDC/M1YZCtG1cUu8Sj3j8KAuuy22p3mIbOwSKaTI7uFZkjYoCcw0zZeIoDuoJDZcyaEw3YPJlBY4VGQDNuJknbnoNdKA8+2l2xcSvl9FMxyLbNZRoNWBJ3X86ACO2Tccp6on+igCR9q82ndxsTp6i7z+7QDi7QJGmFVfG/y0oCWzpMPE8cjGUtch0yjKLng4e40NtxrjV1Y7F2aOlxe08AquDCXI1HeS5gxGthfS/wCdV00k8kXVLtZsLsza6SxO0GFhR4z6rHevAghRY76tKDWF7WTTPbMIhmvcYd2XV/TIsTYDU3tyoDNp7QxBV3+ssYwCL92UubXCrrcDjrY60B5rHhZZGJJALXJvr4kk0A1g4ghJXeOPMnl4V5+Iqazsth9ZorBKjT15L2n6IsMDiZVkVobq97DLz5dPA6VTBNytHaejiJ04Um6vdX5zL7HY6GEkyKMViW1OY/0cflxP86aV6EKMVtzZ8liNI1ajtB6sdyX7s5nHbT7w3KRD/wBsZT+OtdlRhJcDmH0jXoy2trg3cSvWKUXF2PqKVaFaCnF5MFXSBlDhJEJrjdicabkH7sCoNtmiMIxQTCuAJObAJ+6TmcX8QtvOteHW0+f01NWik9pQ7UgN+8tYtct1NzetR4J9GbNi7uGKM+xFGn3UA+VASkegF5HoBaR6AVkegE5ZKAUeSgBRSUA5FJQDcclAMJLagXgebYzGnETsx9pvR8BuUfhXlVHrSufd4WlGjSVNbln48TtvpFwdsPGFFhEVQ2+xlsL8xcL5mrauSVtx5+AtKclL3r/nI8oxErKPHNa2o3nfW6ElJXR85icPKhUcJeXigK7Vcc/J2/OpGcZw+3iBIGDMHjaP1r2zW1selAXa9rUzCbu3soVfZJ9GZJefJBQFAu1E4g/dU/KgJ/8AiUX2R/hj5UAxC6MhkVVsrKvq2JY7sov4Vy51K9/AMuMO7X7v53o5JK7JU6cqklCCu2OxbLkf0mOW/CwBt4hQKxTxEm8j6PD6JpQj+pm/TyJYnZEqLmBLjjv0H7J3iuKvMtlo3CyVtW3mBizZe8ClQCBnFwvQcfdetEa8XtyPHxGi6tN+x7S9eX2LSLtIwsSELAEZlRrkHTWwAPDW1TdWC3meOAxMtkGEx2OxGITuxDMyncERgOGpO8k2FzXOmgWLRtffZfNorT2fxaJmeMxpxLX47hVNSs7ZHo4PR8IzTlJSfATkXKLDfxNY73Z9ClqoZw0xiTvB67aL4eP8+Fb8PDVV+J8rpfFOpU6NPKPq/wCil2hjbaXuTv5seJJ5VoPIEI8eb6gW8KAsw2l+dZ8RHK57OiK1nKn5mqzHt7QiKONRbLoQW1k81RsWa5CVqmkUzbLHZWFuyKy72uVOhKjVhrzCgedbqStE+U0hUc67T3ZHSYnZ8eJbBOxylpEDplt6KjvbnxaxFuFWGI9DkkoBaSSgFpJKAWkkoBWWSgFJZKAUeSgFoZqAcimoByOegB7XxuSCRr+yRflfS/XWuPYTpy1ZKT3M87UkG4OuhBB8wQa86cHF2Z9phq8K8NeOxllNt/EuhjeZnVgAQ9mvY3Gra8BxqLbe0sVKnGWtFZi7YpCoBQ6eINR1WthPWvtQsUw54qDyJUH3XqxKra6Mk54Ju0tW/kPYDZuBbSYsp4NGVYHqlrg9L1NTqLbczVMPhJd1RZLEdnsPqIcQuQ2NpFlU3treyEVLpZrf6FfUcO1dw5SX3K2fs8qmwZW8VY26ekBXOnmjsdF4aW1Nef2NDYB5HyINc6zMl2PhuL5hcP2ffMLKwtfVtF0F9T5UWJkRlofDW2vmdRsXZWHQB5ZkMnAZZCF6ELYnxqMqmv3mXUMN0CtSg/nld+p0WAxuAS/e3c30IVyPdYVyLp7yVSniZdzLkWcfanAILIGH7MVqsVWBmeDxL2/Ur8RtzZhNzhc55mGL5moupDgWxwmK+K3mzSdrsKn9XhSPuL/03rnTR4HeoVX3p/UVxfb2SxCQIvIs7P8AABa4674FkdGR96T5HL7a7S4icZXcBQbhVUAX3X58edQcnLaa4YenSzisylw8RkkVN5Y2/M+69WU43aRmxdfoqTn+X3EttzDvCq7k9BevtH5eVeifHN3d2UkuBLG+bXxocEp8OyesOh4HoaAssE10ty/n51XVXsmvAtqvG3iMJWJn08MggNRLkwipcX3Dmd3+/lXVFvYRnWhCLcnZLkQmxKpuFzwJ+Q/OtEMO/ePGxGlt1Jeb2eS38/Id2Jd5FBYgsr+lvNyja68a0pWPDlJyblLazuIS5khzIVEcqLdjre0hAUWut1uzAne1dOHTyT0AvJNQCsk9ALSz0ApLNQCcs1AKPNQAIb0A5FegG470Avt1CcNIBxCj3utAcRHCUureySOY00rFWznZH0+ikqWFc5ZK7ZsN4/AmprDPeyiemo63sxuvma8x8R8qdWfE5HTMd8XzKPFeu3U1oirJI8WvNVKkprezq8JsDDvh42yOZLZmyyaykRLIIlUghSxkCggE+iNCSbyKicPZaFswtIjBk3u2dQ5jvGyGIIWXOVJD3uvq8KA5LvnUkB2FiRoxG4+FcsifSTWxvmdLs7Eju0uwvlF7nXzrzKsHrPI+zweIpuhBOavZb0OR4gcCPeKr1Wa9aL3oN39RJapAzUFgOIxgQXNWU6TqOyMuLxcMLDWnv2CEm3lG4H3fnatSwi3s8aenn7sOb/oEm2nc5UQknxH5VYsLAzS01iXssvJ/f9iTYmU3zAqR4jePKpdXp8CjtXF3vr+i+1/UxZcygnlWOUNWTR9NQr9NSjN7WWmwmEazYg/o0sni76D+fGtOHjtZ4ml6vdp+f7L9yjCO7ZVBZt+nxJ/OtJ4gy+xsSovk8bBlvp4X1oBM+ldHG/yIPyNADwoy3U8D8t9V1e6zZgP+ePn9GNomlzoOZ0Hlz8qx2Po+kSV3s9AqWvZRmPNhp9386ujQe883EaUjHKnn9OW/6HU7D2FgzZ8Xi1J/s1zADwLkfAW61ojFR2Hj1a1Sq7zd/wA3I5Lb0Ea4uYRkMgkbIQbgISGUAngA1vKpFQTZEyd9GHGZTYMuYrcHQjMPV376A9CCMcaqkjNmZmAvb+ijMeYX/WcjyFAXsiGgFZVNALSA0ArJegFJb0ApLegFHJvQF1DgaAdhwNAOxYDwoCG28BbDSkb1QsOq+l8qjOWqmy7D0ulqxhe13Y8tm0FuJ3nnz+NZaC15uTPb0o1Qw8KEX/pf2V8+LIbKoF+JNbD54xsY4GoX8KAWdlJJKG55Hf0oCKol9A4I10AJFAGXFELlWeVVuGy3a2YEENYHfexvzoBcxL9sc9QaAt8PikCqM40AG/lQBhMh0zKfMGgCBbbtOmn+1QlTjLai+liq1J+xJr6B45Dx8jz8COBrDWoOGa2H0+jtJLEexPKXoyGKS43Xtr1HEfzyqOHnqyz3lulMN09BpbVmgD4NSL2BHOvTPjBcRhDdCL7iD+IoBqfCSIuZxowvfhr40Athx6A8/wATWGt32fVaPVsND83v7jmKmy4dE+25c9BoPlWqkrRR4OPqa+Il4ZchjCADDK6EEo+aZbbwToGG8gC1upqwxlimIR8XBmUlTGpIIPqm5Y6cRYHyNAQ7SYLvVaZEIKk5mAIB11A4ejcAdD4UBy0zFSGAFyPA28j51GUdZWLqNZ0paySfzIma5uSSeZpGKjsI1a06rvN3JriyN1SKyf140AhjsRds3Ma+XH+eVABGK3GgOp2Vi5ZP6R2a9sqkk3te5+NAXMeOmG6R/eaAYTbWIHt36gGgHINvsdHQHpQFpDKjjQWoCUmCoBKXA0Ao+BoDqYsJQDkWFoB2LDUBm09kieCSG+XOpUHkd4PS4FRnHWi0XYet0NWNTgeJ7a2dLh5TFMmVl8ww+0p4iqqEdWLT2m3SlbpqkZx7tsv381vKFcO4YkqTc8NR8KvPMN4lTlGhFvD/AFWoBYrv0GoHsk+8DT3UBjKOIFrDfe3DcN60BhHut9oAeTUBrLrx1HIE/e40BhXUc9d49L3DSgDYRBfhuPC3L2eNAPQPlIFzY8wRb30A2Tw/nwNcaTVmShOUJKUXZoksl+o315k6bg7H2+FxMcRSVRefgzfeaEC1jwNwL8wRe3Sx8q0UsRZWkeTjNEqpJzpOze7cAUW1yr5s5+AUVb1iJhWh6+9oJicU7rldzkHsKAo95JNReI4Iuhoe3flyAySXO6w0AA4ACwFZ9rPYiowiktiBz3eRIx+qg6nf+NeglZWPjpy1pNnQYTByo9yC8cYyKhynvFJzHMCd2mWx5jxNdIlxLJHlmKvHElwrSZbyKQbrGrX1trw3gcjQC+ysUssRw8WcxIGuzW9IkakjideNrUBw0662oDSRUAdMNQDUWAvwoBqPZK8RQDcOzIx7I91ANiKgJd3QBIsMWNgKAu9m7CJ1IoDp8HskKN1AMSYSgE5cJQCjYSgLmOOgGo0oBqNaAZjFAKbc2DBi4+7mW9tVYaOh/Vbh03GgPE+2/Z58BOU1eJxmhZvaHtKSBbMOI6HjQHLvtEcAV+I+FAaG0VO8+8E/KgN/XF/VPkBQGu9U+yD5n86AGXj3W8r/AJigMXJuGYfz5UBKPKNzHzF/81AFEg+0PPP870AZMUOJ91AHw2NiVruuYWsRcr0Nxy199U1qesstp6GjsX0E7N2i/rxHDtHDcIL/APytWPVPo3W3p3/PkCbacH92/wDtepahU8Q1xAtteP2YI/MufnUujZV1uLFWxWY7lHQWqUYe0iuviv05PwN7OwhndgGy2BbMRfiLCwI/kVsPmjrNhRFVaGMCWRczsxzDIq2uAA2trjjfWgCCOwZboWjQMVf0lcFb5dBpYXsedAF2TjFTDO0UORWzFiwY5WItlVr21sLDf4UBxITMx8NKAciw9APQ4WgHY4LUAcLQEgtASC0A/gdmM58KA6rZmxgLaUB0OHwQA3UAdkFALyLQCsiUAu8VAHSgGEagDo1AHR6AOr0AttjZcOKiMM6BkOvIqeDKw1VhzFAeO9pfohxSEthHWdN4ViI5R4a+g3UEdKA832jgJYXMcqMjrvVhqOtALgUBa7BkgilWTEQ/WFU37rvO7VjwzsFJI8BbrbSgOz7R/SAuLQRmFo0AACI8ZQAaAAd0NKA4uSVb6D4CgIGXwHuFAQLUBISLxU/et8qAzOv6w9x/KgNrIBuJ6FdPgahKCkaKGJnS2ZrgbOI5CodD4mvtJ/D6/wBGGVDvBHS3511UrbyuWOUvd9TMy2Nm15WqUYWdyipiHOOraw/siQqSobLnUrm5N7J+X71TM5d4fAtg0ZsxeSRcoVb7nKka7ySVDdFJ5UA6uCxMmIQxi9lTPYb8qkMoPG9tw68BQBO0m2SMNHh8oUKWY29onRbjhYA/jxoDntm4b0bn2tfLhQFpFFQDCigCCgJCgDwQM24UBd7P2NxNAdTgNnAcKAuYYQKAIWoALtQAXagF3NAAagIo9AGWSgCrJQBlloAiy0AVZqA1ipLowzFbqRdd4uN48aA8H23sLDK7BMUGIJuJI3U38W1BPjQHOYjBAHQg9KAXMNARyUBoigNEUBq1AZagMoDKAygMNADVrGgHYZha1AdHsbtGY7XVJP29/Ia8fhQDLdpnQPksmckk3BbXgumgoCjRzO9zcqDqefhQF7GPCgDLQExQBEUndQD2G2e51yk0BeYLDsv6OgLzCTW3pQFxBiBbdagCmagBtLQAmkoATSUAFnoARegF1koAiy0AVZaAmstAEE1AEE1AT76gOY232MgnJdSY3PIXU9RQHKY36PMQPUZHHgcp9x/OgKPF9k8UnrQSeQzD+G9AVU2znX1lZeoI/GgFzhDQEDhTQEDhjQEThzQGu4NAZ3FAZ3BoDPq1ARbCk8KAgcBJwBoAsey5jyHnQFlhdhcZGLeA0FAXMMIUWUADwoAwoCajlQFlgtlO++gOo2bsIDeKA6DD4VV4UAxmHIUBEyCgImQUBAy0BBpaAG0tACaWgBtJQEDJQCokoCYkoCYloCYloCYmoCYmoCQmoCQmoCYmoCQnoDGkB3gHqL0ApNs3DP60ER6ov5UAlL2YwTfoFH7JZfwNAKS9icGdwdej3/EGgE5OwGHPqyuOoU/lQCsn0er7Mw80/I0Au/0fycJEPkRQAW7Bz8Ch/e/2oATdisQPYU9GFAR/4TxA/R/EUBsdmsQP0R+FATHZ7Ef2Z+FAFTs5iPsWoA8fZeY77CgHoOyZ9pqAtcJ2fiTxoC1hhRdwoA3fUBozUBEz0BAzUBEzUBAzUBEzUBAy0AMy0BAyUBHvKA//2Q==',
                                                                        ),
                                                                        width:
                                                                            35.0,
                                                                        height:
                                                                            35.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    );
                                                                  }).divide(
                                                                      SizedBox(
                                                                          width:
                                                                              4.0)),
                                                                );
                                                              },
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 4.0)),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 95.0,
                                                        height: 70.0,
                                                        child: Stack(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            FocusScope.of(context).unfocus();
                                                                            FocusManager.instance.primaryFocus?.unfocus();
                                                                          },
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                MediaQuery.viewInsetsOf(context),
                                                                            child:
                                                                                Container(
                                                                              height: MediaQuery.sizeOf(context).height * 0.93,
                                                                              child: SelectServiceWidget(
                                                                                baseProduct: serviceItem,
                                                                                company: widget!.company,
                                                                                hasMoreService: aquibrazil_library_oi8i5r_data_schema.SessionServiceStruct.maybeFromMap(serviceQueryServiceResponse.jsonBody)!.service.length > 1 ? true : false,
                                                                                customer: aquibrazil_library_oi8i5r_data_schema.SessionServiceStruct.maybeFromMap(serviceQueryServiceResponse.jsonBody)!.customer,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      safeSetState(
                                                                          () {}));
                                                                },
                                                                text: FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'bc2la0iq' /* RESERVAR */,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 90.0,
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              100.0),
                                                                ),
                                                              ),
                                                            ),
                                                            if (serviceItem
                                                                    .individualDiscount !=
                                                                0.0)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        -1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: 25.0,
                                                                    height:
                                                                        25.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              100.0),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              3.0),
                                                                          child:
                                                                              Lottie.asset(
                                                                            'assets/jsons/Fire_(2).json',
                                                                            width:
                                                                                20.0,
                                                                            height:
                                                                                20.0,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                            animate:
                                                                                true,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 12.0)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ].addToEnd(SizedBox(height: 24.0)),
                      ),
                    ),
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
