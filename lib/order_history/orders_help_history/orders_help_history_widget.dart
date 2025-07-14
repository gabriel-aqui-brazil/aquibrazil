import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/enums/enums.dart"
    as aquibrazil_library_oi8i5r_enums;
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'orders_help_history_model.dart';
export 'orders_help_history_model.dart';

class OrdersHelpHistoryWidget extends StatefulWidget {
  const OrdersHelpHistoryWidget({
    super.key,
    required this.order,
  });

  final aquibrazil_library_oi8i5r_data_schema.OrderStruct? order;

  static String routeName = 'ordersHelpHistory';
  static String routePath = 'ordersHelpHistory';

  @override
  State<OrdersHelpHistoryWidget> createState() =>
      _OrdersHelpHistoryWidgetState();
}

class _OrdersHelpHistoryWidgetState extends State<OrdersHelpHistoryWidget> {
  late OrdersHelpHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrdersHelpHistoryModel());
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 56.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          OrderDetailsWidget.routeName,
                          queryParameters: {
                            'orderId': serializeParam(
                              widget!.order?.id,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'h45t9r0r' /* DETALHES DA SOLICITAÇÃO */,
                      ),
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Anton',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      fillColor: Colors.transparent,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.transparent,
                        size: 20.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder<ApiCallResponse>(
                future: MainGroup.getComplaintHistoryCall.call(
                  orderId: widget!.order?.id,
                  token: currentAuthenticationToken,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  final containerGetComplaintHistoryResponse = snapshot.data!;

                  return Container(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    () {
                                      if (aquibrazil_library_oi8i5r_data_schema.ComplaintStruct.maybeFromMap(containerGetComplaintHistoryResponse.jsonBody)
                                              ?.reason ==
                                          ComplaintReason
                                              .PRODUCT_ARRIVED_COLD.name) {
                                        return valueOrDefault<String>(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            ptText: 'PRODUTO CHEGOU FRIO',
                                            enText: 'PRODUCT ARRIVED COLD',
                                            esText: 'EL PRODUCTO LLEGÓ FRÍO',
                                          ),
                                          'PRODUCT ARRIVED COLD',
                                        );
                                      } else if (aquibrazil_library_oi8i5r_data_schema.ComplaintStruct.maybeFromMap(
                                                  containerGetComplaintHistoryResponse
                                                      .jsonBody)
                                              ?.reason ==
                                          ComplaintReason.WRONG_PRODUCT.name) {
                                        return valueOrDefault<String>(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            ptText: 'PRODUTO CHEGOU ERRADO',
                                            enText: 'PRODUCT ARRIVED WRONG',
                                            esText: 'EL PRODUCTO LLEGÓ MAL',
                                          ),
                                          'PRODUCT ARRIVED WRONG',
                                        );
                                      } else if (aquibrazil_library_oi8i5r_data_schema.ComplaintStruct.maybeFromMap(
                                                  containerGetComplaintHistoryResponse
                                                      .jsonBody)
                                              ?.reason ==
                                          ComplaintReason
                                              .INCOMPLETE_PRODUCT.name) {
                                        return valueOrDefault<String>(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            ptText: 'PRODUTO CHEGOU INCOMPLETO',
                                            enText:
                                                'PRODUCT ARRIVED INCOMPLETE',
                                            esText:
                                                'EL PRODUCTO LLEGÓ INCOMPLETO',
                                          ),
                                          'PRODUCT ARRIVED INCOMPLETE',
                                        );
                                      } else if (aquibrazil_library_oi8i5r_data_schema.ComplaintStruct.maybeFromMap(
                                                  containerGetComplaintHistoryResponse
                                                      .jsonBody)
                                              ?.reason ==
                                          ComplaintReason
                                              .DAMAGED_PRODUCT.name) {
                                        return valueOrDefault<String>(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            ptText: 'PRODUTO CHEGOU DANIFICADO',
                                            enText: 'EL PRODUCTO LLEGÓ DAÑADO',
                                            esText: 'PRODUCT ARRIVED DAMAGED',
                                          ),
                                          'EL PRODUCTO LLEGÓ DAÑADO',
                                        );
                                      } else if (aquibrazil_library_oi8i5r_data_schema
                                                      .ComplaintStruct
                                                  .maybeFromMap(containerGetComplaintHistoryResponse.jsonBody)
                                              ?.reason ==
                                          ComplaintReason.DELAY_IN_DELIVERY.name) {
                                        return valueOrDefault<String>(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            ptText: 'ATRASO NA ENTREGA',
                                            enText: 'DELIVERY DELAY',
                                            esText: 'RETRASO EN LA ENTREGA',
                                          ),
                                          'DELIVERY DELAY',
                                        );
                                      } else {
                                        return valueOrDefault<String>(
                                          FFLocalizations.of(context)
                                              .getVariableText(
                                            ptText: 'OUTRO',
                                            enText: 'OTHER',
                                            esText: 'OTRO',
                                          ),
                                          'OTRO',
                                        );
                                      }
                                    }(),
                                    'OTRO',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  '${dateTimeFormat(
                                    "M/d h:mm a",
                                    DateTime.fromMillisecondsSinceEpoch(
                                        valueOrDefault<int>(
                                      widget!.order?.createdAt,
                                      0,
                                    )),
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )} - ${FFLocalizations.of(context).getVariableText(
                                    ptText: 'Finalizado',
                                    enText: 'Finished',
                                    esText: 'Finalizado',
                                  )}',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF4D4D4D),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: Color(0xFFE6E6E6),
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          widget!
                                              .order?.company?.profilePhotoUrl,
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mE0o3DUMem2PBSBV2xgB/assets/hj58uh1it70k/logosite_1.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              functions.toUpperCase(
                                                  widget!.order?.company?.name),
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
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
                                                  fontSize: 16.0,
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
                                              functions.toUpperCase(widget!
                                                  .order
                                                  ?.company
                                                  ?.address
                                                  ?.address),
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
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
                                                  color: Color(0xFF4D4D4D),
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
                                        ],
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12.0)),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          Expanded(
                            child: Builder(
                              builder: (context) {
                                final history =
                                    aquibrazil_library_oi8i5r_data_schema
                                                    .ComplaintStruct
                                                .maybeFromMap(
                                                    containerGetComplaintHistoryResponse
                                                        .jsonBody)
                                            ?.complaintHistory
                                            ?.toList() ??
                                        [];

                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: history.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 16.0),
                                  itemBuilder: (context, historyIndex) {
                                    final historyItem = history[historyIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.circle_sharp,
                                            color: Color(0xFF319B6F),
                                            size: 12.0,
                                          ),
                                          Flexible(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  valueOrDefault<String>(
                                                    () {
                                                      if (historyItem.status ==
                                                          aquibrazil_library_oi8i5r_enums
                                                              .ComplaintHistoryStatus
                                                              .CREATED) {
                                                        return valueOrDefault<
                                                            String>(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                            ptText:
                                                                'SOLICITAÇÃO DE RECLAMAÇÃO ABERTA',
                                                            enText:
                                                                'OPEN COMPLAINT REQUEST',
                                                            esText:
                                                                'SOLICITUD DE QUEJA ABIERTA',
                                                          ),
                                                          'Solicitação de reclamação aberta',
                                                        );
                                                      } else if (historyItem
                                                              .status ==
                                                          aquibrazil_library_oi8i5r_enums
                                                              .ComplaintHistoryStatus
                                                              .RESPONSE_COMPANY) {
                                                        return valueOrDefault<
                                                            String>(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                            ptText:
                                                                'RESPOSTA DA LOJA',
                                                            enText:
                                                                'STORE RESPONSE',
                                                            esText:
                                                                'RESPUESTA DE LA TIENDA',
                                                          ),
                                                          'Resposta da loja',
                                                        );
                                                      } else if (historyItem
                                                              .status ==
                                                          aquibrazil_library_oi8i5r_enums
                                                              .ComplaintHistoryStatus
                                                              .RESPONSE_AQUIBRAZIL) {
                                                        return valueOrDefault<
                                                            String>(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                            ptText:
                                                                'RESPOSTA DA AQUIBRAZIL',
                                                            enText:
                                                                'AQUIBRAZIL\'S RESPONSE',
                                                            esText:
                                                                'RESPUESTA DE AQUIBRASIL',
                                                          ),
                                                          'Resposta da AquiBrazil',
                                                        );
                                                      } else if (historyItem
                                                              .status ==
                                                          aquibrazil_library_oi8i5r_enums
                                                              .ComplaintHistoryStatus
                                                              .REFUND) {
                                                        return valueOrDefault<
                                                            String>(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                            ptText: 'REEMBOLSO',
                                                            enText: 'REFUND',
                                                            esText: 'REEMBOLSO',
                                                          ),
                                                          'Reembolso',
                                                        );
                                                      } else if (historyItem
                                                              .status ==
                                                          aquibrazil_library_oi8i5r_enums
                                                              .ComplaintHistoryStatus
                                                              .PARTIAL_REFUND) {
                                                        return valueOrDefault<
                                                            String>(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getVariableText(
                                                            ptText:
                                                                'REEMBOLSO PARCIAL',
                                                            enText:
                                                                'PARTIAL REFUND',
                                                            esText:
                                                                'REEMBOLSO PARCIAL',
                                                          ),
                                                          'Reembolso parcial',
                                                        );
                                                      } else if (historyItem
                                                              .status ==
                                                          aquibrazil_library_oi8i5r_enums
                                                              .ComplaintHistoryStatus
                                                              .DISCOUNT_CUPON) {
                                                        return FFLocalizations
                                                                .of(context)
                                                            .getVariableText(
                                                          ptText:
                                                              'CUPOM DE DESCONTO',
                                                          enText:
                                                              'DISCOUNT COUPON',
                                                          esText:
                                                              'CUPÓN DE DESCUENTO',
                                                        );
                                                      } else {
                                                        return FFLocalizations
                                                                .of(context)
                                                            .getVariableText(
                                                          ptText:
                                                              'SOLICITAÇÃO FINALIZADA',
                                                          enText:
                                                              'REQUEST COMPLETED',
                                                          esText:
                                                              'SOLICITUD COMPLETADA',
                                                        );
                                                      }
                                                    }(),
                                                    '-',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
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
                                                    dateTimeFormat(
                                                      "MM/dd - h:mm a",
                                                      DateTime
                                                          .fromMillisecondsSinceEpoch(
                                                              historyItem
                                                                  .createdAt),
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    '-:-',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
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
                                                if (historyItem.observation !=
                                                        null &&
                                                    historyItem.observation !=
                                                        '')
                                                  Text(
                                                    valueOrDefault<String>(
                                                      '${FFLocalizations.of(context).getVariableText(
                                                        ptText: 'OBSERVAÇÃO: ',
                                                        enText: 'OBSERVATION: ',
                                                        esText: 'OBSERVACIÓN: ',
                                                      )}${functions.toUpperCase(historyItem.observation)}',
                                                      '-',
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
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
