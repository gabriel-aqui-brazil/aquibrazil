import '/auth/custom_auth/auth_util.dart';
import '/companies/service/appointment_reeschedule/appointment_reeschedule_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'order_in_progress_model.dart';
export 'order_in_progress_model.dart';

class OrderInProgressWidget extends StatefulWidget {
  const OrderInProgressWidget({super.key});

  @override
  State<OrderInProgressWidget> createState() => _OrderInProgressWidgetState();
}

class _OrderInProgressWidgetState extends State<OrderInProgressWidget>
    with TickerProviderStateMixin {
  late OrderInProgressModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderInProgressModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.order(
        context,
        'order/${currentUserData?.lastOrderId}',
        () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            enableDrag: false,
            useSafeArea: true,
            context: context,
            builder: (context) {
              return WebViewAware(
                child: Padding(
                  padding: MediaQuery.viewInsetsOf(context),
                  child: AppointmentReescheduleWidget(),
                ),
              );
            },
          ).then((value) => safeSetState(() {}));
        },
      );
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.5, 1.5),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: FFAppState().orderSelected.hasId() &&
          (FFAppState().orderSelected.status != 'Concluido') &&
          (FFAppState().orderSelected.status != 'Agendado') &&
          (FFAppState().orderSelected.status != 'Cancelado') &&
          (FFAppState().orderSelected.status != 'Recusado'),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          if (FFAppState().orderSelected.type == 'service') {
            if (FFAppState().orderSelected.status == 'Aceitar novo horário') {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return WebViewAware(
                    child: Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: AppointmentReescheduleWidget(),
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            } else {
              context.pushNamed(
                Temp8ConfirmWidget.routeName,
                queryParameters: {
                  'orderID': serializeParam(
                    FFAppState().orderSelected.id,
                    ParamType.String,
                  ),
                }.withoutNulls,
              );
            }
          } else {
            context.pushNamed(
              TrackOrderWidget.routeName,
              queryParameters: {
                'orderId': serializeParam(
                  FFAppState().orderSelected.id,
                  ParamType.String,
                ),
              }.withoutNulls,
            );
          }
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF0C9488),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 56.0, 16.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 22.0,
                        height: 22.0,
                        decoration: BoxDecoration(
                          color: Color(0x7FFFFFFF),
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10.0,
                              height: 10.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ).animateOnPageLoad(
                                animationsMap['containerOnPageLoadAnimation']!),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Builder(
                          builder: (context) {
                            if (FFAppState().orderSelected.type == 'service') {
                              return Text(
                                valueOrDefault<String>(
                                  functions.toUpperCase(
                                      'Agendamento  - ${FFAppState().orderSelected.status} - ${FFAppState().orderSelected.company.name}'),
                                  '--',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 11.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              );
                            } else {
                              return Text(
                                valueOrDefault<String>(
                                  functions.toUpperCase(
                                      'Pedido  - ${FFAppState().orderSelected.status} - ${FFAppState().orderSelected.company.name}'),
                                  '--',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              );
                            }
                          },
                        ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ),
                Icon(
                  FFIcons.karrowRight,
                  color: Colors.white,
                  size: 18.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
