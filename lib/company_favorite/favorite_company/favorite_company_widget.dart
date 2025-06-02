import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/order_in_progress/order_in_progress_widget.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import "package:aquibrazil_library_oi8i5r/flutter_flow/nav/serialization_util.dart"
    as aquibrazil_library_oi8i5r_serialization_util;
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favorite_company_model.dart';
export 'favorite_company_model.dart';

class FavoriteCompanyWidget extends StatefulWidget {
  const FavoriteCompanyWidget({super.key});

  static String routeName = 'favoriteCompany';
  static String routePath = 'favoriteCompany';

  @override
  State<FavoriteCompanyWidget> createState() => _FavoriteCompanyWidgetState();
}

class _FavoriteCompanyWidgetState extends State<FavoriteCompanyWidget> {
  late FavoriteCompanyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavoriteCompanyModel());

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
    context.watch<FFAppState>();

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
                ..complete(MainGroup.queryFavoriteCompanyCall.call(
                  token: currentAuthenticationToken,
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
                    color: FlutterFlowTheme.of(context).primary,
                    size: 35.0,
                  ),
                ),
              );
            }
            final containerQueryFavoriteCompanyResponse = snapshot.data!;

            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.orderInProgressModel,
                      updateCallback: () => safeSetState(() {}),
                      child: OrderInProgressWidget(),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0,
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
                            0.0,
                            16.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'n5x6a2vj' /* MEUS FAVORITOS */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Anton',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final companyItems = (containerQueryFavoriteCompanyResponse
                                          .jsonBody
                                          .toList()
                                          .map<
                                                  aquibrazil_library_oi8i5r_data_schema
                                                  .CompanyStruct?>(
                                              aquibrazil_library_oi8i5r_data_schema
                                                  .CompanyStruct.maybeFromMap)
                                          .toList()
                                      as Iterable<
                                          aquibrazil_library_oi8i5r_data_schema
                                          .CompanyStruct?>)
                                  .withoutNulls
                                  ?.toList() ??
                              [];
                          if (companyItems.isEmpty) {
                            return Center(
                              child: EmptyListWidget(
                                header: FFLocalizations.of(context).getText(
                                  'le7jbbri' /* LISTA DE FAVORITOS VAZIA */,
                                ),
                                content: FFLocalizations.of(context).getText(
                                  'nyzgq20y' /* SUAS EMPRESAS FAVORITAS APAREC... */,
                                ),
                              ),
                            );
                          }

                          return ListView.separated(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              0,
                              0,
                              12.0,
                            ),
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: companyItems.length,
                            separatorBuilder: (_, __) => SizedBox(height: 16.0),
                            itemBuilder: (context, companyItemsIndex) {
                              final companyItemsItem =
                                  companyItems[companyItemsIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (companyItemsItem.type == 'entrega') {
                                    context.pushNamed(
                                      DeliveryFoodWidget.routeName,
                                      queryParameters: {
                                        'companyId': serializeParam(
                                          companyItemsItem.id,
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
                                          companyItemsItem,
                                          aquibrazil_library_oi8i5r_serialization_util
                                              .ParamType.DataStruct,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF7F7F7),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 8.0, 12.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    child: Image.network(
                                                      companyItemsItem
                                                          .profilePhotoUrl,
                                                      width: 45.0,
                                                      height: 45.0,
                                                      fit: BoxFit.cover,
                                                      errorBuilder: (context,
                                                              error,
                                                              stackTrace) =>
                                                          Image.asset(
                                                        'assets/images/error_image.png',
                                                        width: 45.0,
                                                        height: 45.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
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
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Flexible(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions.toUpperCase(
                                                                      valueOrDefault<
                                                                          String>(
                                                                    companyItemsItem
                                                                        .name,
                                                                    '--',
                                                                  )),
                                                                  '--',
                                                                ).maybeHandleOverflow(
                                                                  maxChars: 35,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          12.0,
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
                                                          ].divide(SizedBox(
                                                              width: 4.0)),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    '${formatNumber(
                                                                      companyItemsItem
                                                                          .distance,
                                                                      formatType:
                                                                          FormatType
                                                                              .custom,
                                                                      format:
                                                                          '####.#',
                                                                      locale:
                                                                          '',
                                                                    )} MILHAS',
                                                                    '0',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .poppins(
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
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
                                                              ].divide(SizedBox(
                                                                  width: 4.0)),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 4.0)),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: Container(
                                                            width: 150.0,
                                                            height: 30.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFFEEEEEE),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            companyItemsItem.isOpen
                                                                                ? 'ABERTO'
                                                                                : 'FECHADO',
                                                                            'ABERTO/FECHADO',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.poppins(
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 11.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ].addToStart(SizedBox(width: 8.0)).addToEnd(
                                                                              SizedBox(width: 8.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 8.0)),
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 4.0)),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 12.0)),
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderRadius: 8.0,
                                              buttonSize: 40.0,
                                              icon: Icon(
                                                FFIcons.kcoracaoBranco,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 18.0,
                                              ),
                                              showLoadingIndicator: true,
                                              onPressed: () async {
                                                var _shouldSetState = false;
                                                _model.apiResultydt =
                                                    await MainGroup
                                                        .removeFavoriteCompanyCall
                                                        .call(
                                                  companyId:
                                                      companyItemsItem.id,
                                                  token:
                                                      currentAuthenticationToken,
                                                );

                                                _shouldSetState = true;
                                                if ((_model.apiResultydt
                                                        ?.succeeded ??
                                                    true)) {
                                                  ScaffoldMessenger.of(context)
                                                      .clearSnackBars();
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        valueOrDefault<String>(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                            ptText:
                                                                'EMPRESA REMOVIDA DA LISTA DE FAVORITOS',
                                                            enText:
                                                                'COMPANY REMOVED FROM FAVORITE LIST',
                                                            esText:
                                                                'EMPRESA ELIMINADA DE LA LISTA DE FAVORITOS',
                                                          ),
                                                          'EMPRESA ELIMINADA DE LA LISTA DE FAVORITOS',
                                                        ),
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                    ),
                                                  );
                                                  safeSetState(() => _model
                                                          .apiRequestCompleter =
                                                      null);
                                                  await _model
                                                      .waitForApiRequestCompleted();
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .clearSnackBars();
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        valueOrDefault<String>(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                            ptText:
                                                                'ERRO AO REMOVER EMPRESA DOS FAVORITOS',
                                                            enText:
                                                                'ERROR REMOVING COMPANY FROM FAVORITES',
                                                            esText:
                                                                'ERROR AL ELIMINAR EMPRESA DE FAVORITOS',
                                                          ),
                                                          'ERROR AL ELIMINAR EMPRESA DE FAVORITOS',
                                                        ),
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                    ),
                                                  );
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }

                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                              },
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
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
