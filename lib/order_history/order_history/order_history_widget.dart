import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/companies/service/appointment_reeschedule/appointment_reeschedule_widget.dart';
import '/components/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/order_in_progress/order_in_progress_widget.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'order_history_model.dart';
export 'order_history_model.dart';

class OrderHistoryWidget extends StatefulWidget {
  const OrderHistoryWidget({super.key});

  static String routeName = 'orderHistory';
  static String routePath = 'orderHistory';

  @override
  State<OrderHistoryWidget> createState() => _OrderHistoryWidgetState();
}

class _OrderHistoryWidgetState extends State<OrderHistoryWidget> {
  late OrderHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderHistoryModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      HapticFeedback.mediumImpact();
      _model.apiResult4xv = await MainGroup.queryOrderHistoryCall.call(
        token: currentAuthenticationToken,
      );

      FFAppState().historyOrder = ((_model.apiResult4xv?.jsonBody ?? '')
                  .toList()
                  .map<aquibrazil_library_oi8i5r_data_schema.OrderStruct?>(
                      aquibrazil_library_oi8i5r_data_schema
                          .OrderStruct.maybeFromMap)
                  .toList()
              as Iterable<aquibrazil_library_oi8i5r_data_schema.OrderStruct?>)
          .withoutNulls
          .toList()
          .cast<aquibrazil_library_oi8i5r_data_schema.OrderStruct>();
      FFAppState().update(() {});
      await actions.historyOrder(
        context,
        'orderCustomer/${currentUserData?.id}',
      );
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: Container(
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
                          '2leeyp8l' /* HISTÓRICO DE PEDIDOS */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                        final order = FFAppState().historyOrder.toList();
                        if (order.isEmpty) {
                          return Center(
                            child: EmptyListWidget(
                              header: FFLocalizations.of(context).getText(
                                'rilg8azt' /* VOCÊ AINDA NÃO POSSUI NENHUM P... */,
                              ),
                              content: FFLocalizations.of(context).getText(
                                'xdabh9qa' /* SEUS PEDIDOS REALIZADOS APAREC... */,
                              ),
                            ),
                          );
                        }

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: order.length,
                          separatorBuilder: (_, __) => SizedBox(height: 12.0),
                          itemBuilder: (context, orderIndex) {
                            final orderItem = order[orderIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (orderItem.type == 'service') {
                                  if (orderItem.status ==
                                      'Aceitar novo horário') {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
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
                                              child:
                                                  AppointmentReescheduleWidget(),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  } else if (orderItem.status == 'Pendente') {
                                    context.pushNamed(
                                      Temp8ConfirmWidget.routeName,
                                      queryParameters: {
                                        'orderID': serializeParam(
                                          orderItem.id,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    context.pushNamed(
                                      OrderDetailsServiceWidget.routeName,
                                      queryParameters: {
                                        'orderID': serializeParam(
                                          orderItem.id,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
                                } else {
                                  if ((orderItem.status == 'Concluido') ||
                                      (orderItem.status == 'Recusado') ||
                                      (orderItem.status == 'Cancelado')) {
                                    context.pushNamed(
                                      OrderDetailsWidget.routeName,
                                      queryParameters: {
                                        'orderID': serializeParam(
                                          orderItem.id,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    FFAppState().orderSelected = orderItem;
                                    safeSetState(() {});

                                    context.pushNamed(
                                      TrackOrderWidget.routeName,
                                      queryParameters: {
                                        'orderId': serializeParam(
                                          orderItem.id,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
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
                                          12.0, 12.0, 12.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    orderItem.company
                                                        .profilePhotoUrl,
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mE0o3DUMem2PBSBV2xgB/assets/hj58uh1it70k/logosite_1.png',
                                                  ),
                                                  width: 45.0,
                                                  height: 45.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      functions.toUpperCase(
                                                          valueOrDefault<
                                                              String>(
                                                        orderItem.company.name,
                                                        '--',
                                                      )),
                                                      'COMPANY NAME',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 13.0,
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
                                                  Text(
                                                    valueOrDefault<String>(
                                                      functions.toUpperCase(
                                                          dateTimeFormat(
                                                        "MMMMEEEEd",
                                                        DateTime
                                                            .fromMillisecondsSinceEpoch(
                                                                orderItem
                                                                    .createdAt),
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )),
                                                      '----/--/---',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
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
                                                          fontSize: 11.0,
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
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 4.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      4.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              '${orderItem.itemsCount.toString()} ITEMS ${formatNumber(
                                                                orderItem
                                                                    .totalAmount,
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .periodDecimal,
                                                                currency: '\$',
                                                              )}',
                                                              '--',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      11.0,
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
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .toUpperCase(
                                                                    orderItem
                                                                        .status),
                                                            'STATUS',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
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
                                                                fontSize: 11.0,
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
                                                      ].divide(
                                                          SizedBox(width: 4.0)),
                                                    ),
                                                  ),
                                                  if (valueOrDefault<bool>(
                                                        orderItem.items
                                                            .where((e) =>
                                                                e.orderServiceDetail
                                                                    .preferredTime !=
                                                                null)
                                                            .toList()
                                                            .isNotEmpty,
                                                        false,
                                                      ) &&
                                                      (orderItem.status ==
                                                          'Agendado'))
                                                    Text(
                                                      valueOrDefault<String>(
                                                        'DATA DO AGENDAMENTO • ${dateTimeFormat(
                                                          "MM/dd  - h:mm a",
                                                          DateTime
                                                              .fromMillisecondsSinceEpoch(
                                                                  valueOrDefault<
                                                                      int>(
                                                            orderItem.items
                                                                .where((e) =>
                                                                    e.orderServiceDetail
                                                                        .preferredTime !=
                                                                    null)
                                                                .toList()
                                                                .firstOrNull
                                                                ?.orderServiceDetail
                                                                ?.preferredTime,
                                                            0,
                                                          )),
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        )}',
                                                        'DATA DO AGENDAMENTO • ',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
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
                                                                    .primary,
                                                                fontSize: 11.0,
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
                                                ].divide(SizedBox(height: 6.0)),
                                              ),
                                            ].divide(SizedBox(width: 12.0)),
                                          ),
                                          Builder(
                                            builder: (context) {
                                              if (orderItem.status ==
                                                  'Remarcado') {
                                                return Lottie.asset(
                                                  'assets/jsons/Attention_(5).json',
                                                  width: 20.0,
                                                  height: 20.0,
                                                  fit: BoxFit.contain,
                                                  animate: true,
                                                );
                                              } else {
                                                return Icon(
                                                  FFIcons.karrowSquareRight,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 20.0,
                                                );
                                              }
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
          ),
        ),
      ),
    );
  }
}
