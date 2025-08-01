import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/index.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'payment_method_delete_model.dart';
export 'payment_method_delete_model.dart';

class PaymentMethodDeleteWidget extends StatefulWidget {
  const PaymentMethodDeleteWidget({
    super.key,
    required this.paymentMethod,
  });

  final aquibrazil_library_oi8i5r_data_schema.CardStruct? paymentMethod;

  @override
  State<PaymentMethodDeleteWidget> createState() =>
      _PaymentMethodDeleteWidgetState();
}

class _PaymentMethodDeleteWidgetState extends State<PaymentMethodDeleteWidget> {
  late PaymentMethodDeleteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentMethodDeleteModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 30.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
            Container(
              width: double.infinity,
              height: 115.0,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'ankzywx1' /* QUER MESMO EXCLUIR ESTE CARTÃO... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Anton',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                    Text(
                      'Ao confirmar, ${widget!.paymentMethod?.funding} final ••••${widget!.paymentMethod?.last4} não estará mais disponível na sua lista de métodos de pagamento disponíveis no app.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Color(0xFF4D4D4D),
                            fontSize: 13.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.deletePaymentMethod =
                        await MainGroup.deletePaymentMethodCall.call(
                      paymentMethodId: widget!.paymentMethod?.id,
                      token: currentAuthenticationToken,
                    );

                    if ((currentUserData?.defaultCard?.id ==
                            widget!.paymentMethod?.id) &&
                        valueOrDefault<bool>(
                          (_model.deletePaymentMethod?.succeeded ?? true),
                          false,
                        )) {
                      FFAppState().paymentMethodSelected =
                          aquibrazil_library_oi8i5r_data_schema.CardStruct
                              .maybeFromMap(
                                  (_model.deletePaymentMethod?.jsonBody ??
                                      ''))!;
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
                          timezone: currentUserData?.timezone,
                          defaultCard: aquibrazil_library_oi8i5r_data_schema
                                  .CardStruct
                              .maybeFromMap(
                                  (_model.deletePaymentMethod?.jsonBody ?? '')),
                          document: currentUserData?.document,
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            valueOrDefault<String>(
                              FFLocalizations.of(context).getVariableText(
                                ptText: 'CARTÃO REMOVIDO COM SUCESSO',
                                enText: 'CARD REMOVED SUCCESSFULLY',
                                esText: 'TARJETA RETIRADA CON ÉXITO',
                              ),
                              'TARJETA RETIRADA CON ÉXITO',
                            ),
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            valueOrDefault<String>(
                              FFLocalizations.of(context).getVariableText(
                                ptText:
                                    'NÃO FOI POSSIVEL REMOVER ESTE CARTÃO, TENTE NOVAMENTE',
                                enText:
                                    'UNABLE TO REMOVE THIS CARD, PLEASE TRY AGAIN',
                                esText:
                                    'NO SE PUEDE QUITAR ESTA TARJETA, INTÉNTELO DE NUEVO',
                              ),
                              'UNABLE TO REMOVE THIS CARD, PLEASE TRY AGAIN',
                            ),
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    }

                    Navigator.pop(context);

                    safeSetState(() {});
                  },
                  text: FFLocalizations.of(context).getText(
                    'qbnpuknq' /* EXCLUIR CARTÃO */,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFEB001B),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: FFLocalizations.of(context).getText(
                    '3u5o981x' /* CANCELAR */,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 50.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
            ),
          ].divide(SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
