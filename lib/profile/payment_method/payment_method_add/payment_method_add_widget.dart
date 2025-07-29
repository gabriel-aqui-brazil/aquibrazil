import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'payment_method_add_model.dart';
export 'payment_method_add_model.dart';

class PaymentMethodAddWidget extends StatefulWidget {
  const PaymentMethodAddWidget({super.key});

  @override
  State<PaymentMethodAddWidget> createState() => _PaymentMethodAddWidgetState();
}

class _PaymentMethodAddWidgetState extends State<PaymentMethodAddWidget> {
  late PaymentMethodAddModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentMethodAddModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 78.51,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'l7nodzrr' /* ADICIONAR CARTÃO */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Anton',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '83olu71a' /* PARA CONTINUAR, INSIRA UM CART... */,
                        ),
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
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              child: custom_widgets.StripePaymentMethodWidget(
                width: double.infinity,
                height: 200.0,
                publishableKey: FFDevEnvironmentValues().stripeKey,
                name: currentUserData!.firstName,
                email: currentUserData!.email,
                onPaymentMethodCreated:
                    (paymentMethodId, paymentSuccess) async {
                  if (paymentSuccess) {
                    _model.apiResultaa9 =
                        await MainGroup.paymentMethodAttachCall.call(
                      paymentMethodId: paymentMethodId,
                      token: currentAuthenticationToken,
                    );

                    FFAppState().paymentMethodSelected =
                        aquibrazil_library_oi8i5r_data_schema.CardStruct
                            .maybeFromMap(
                                (_model.apiResultaa9?.jsonBody ?? ''))!;
                    safeSetState(() {});
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
                        defaultCard:
                            aquibrazil_library_oi8i5r_data_schema.CardStruct
                                .maybeFromMap(
                                    (_model.apiResultaa9?.jsonBody ?? '')),
                        document: currentUserData?.document,
                      ),
                    );
                    Navigator.pop(context);
                  }

                  safeSetState(() {});
                },
              ),
            ),
          ]
              .divide(SizedBox(height: 12.0))
              .addToStart(SizedBox(height: 12.0))
              .addToEnd(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
