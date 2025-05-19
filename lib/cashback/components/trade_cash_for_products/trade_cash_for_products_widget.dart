import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trade_cash_for_products_model.dart';
export 'trade_cash_for_products_model.dart';

class TradeCashForProductsWidget extends StatefulWidget {
  const TradeCashForProductsWidget({super.key});

  @override
  State<TradeCashForProductsWidget> createState() =>
      _TradeCashForProductsWidgetState();
}

class _TradeCashForProductsWidgetState
    extends State<TradeCashForProductsWidget> {
  late TradeCashForProductsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TradeCashForProductsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 361.0,
      height: 160.0,
      decoration: BoxDecoration(
        color: Color(0xFFFCDEE2),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 0.0, 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: FFLocalizations.of(context).getText(
                          '4gz2s5sm' /* Troque seu saldo 
por  */
                          ,
                        ),
                        style: TextStyle(
                          color: Color(0xFF4D4D4D),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                      ),
                      TextSpan(
                        text: FFLocalizations.of(context).getText(
                          '4nunvxj8' /* experiências  */,
                        ),
                        style: TextStyle(
                          color: Color(0xFFEE445A),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      TextSpan(
                        text: FFLocalizations.of(context).getText(
                          '6m5p0rid' /* e
 */
                          ,
                        ),
                        style: GoogleFonts.poppins(
                          color: Color(0xFF4D4D4D),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                      ),
                      TextSpan(
                        text: FFLocalizations.of(context).getText(
                          'tfp7kt9x' /* produtos exclusivos */,
                        ),
                        style: TextStyle(
                          color: Color(0xFFEE445A),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      TextSpan(
                        text: FFLocalizations.of(context).getText(
                          'zngfrmxf' /* ! */,
                        ),
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(TradeCashProductsPageWidget.routeName);
                  },
                  text: FFLocalizations.of(context).getText(
                    'xop2crmd' /* TROCAR AGORA */,
                  ),
                  options: FFButtonOptions(
                    width: 128.0,
                    height: 32.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(800.0),
                  ),
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/SvgjsG1008.png',
                width: 150.0,
                height: 126.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
