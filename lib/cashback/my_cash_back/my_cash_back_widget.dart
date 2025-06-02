import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/cashback/components/balance_cashback/balance_cashback_widget.dart';
import '/cashback/components/foot_divider/foot_divider_widget.dart';
import '/cashback/components/terms_and_help_cash/terms_and_help_cash_widget.dart';
import '/cashback/components/trade_cash_for_azul_points/trade_cash_for_azul_points_widget.dart';
import '/cashback/components/trade_cash_for_products/trade_cash_for_products_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_cash_back_model.dart';
export 'my_cash_back_model.dart';

class MyCashBackWidget extends StatefulWidget {
  const MyCashBackWidget({super.key});

  static String routeName = 'myCashBack';
  static String routePath = 'myCashBack';

  @override
  State<MyCashBackWidget> createState() => _MyCashBackWidgetState();
}

class _MyCashBackWidgetState extends State<MyCashBackWidget> {
  late MyCashBackModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyCashBackModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: MainGroup.gETCashBackAvaliableCall.call(
        token: currentAuthenticationToken,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
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
        final myCashBackGETCashBackAvaliableResponse = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(48.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                iconTheme:
                    IconThemeData(color: FlutterFlowTheme.of(context).info),
                automaticallyImplyLeading: false,
                leading: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(HomeWidget.routeName);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    'n2ef3va2' /* MEU CASHBACK */,
                  ),
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Anton',
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
                actions: [],
                centerTitle: true,
                elevation: 0.0,
              ),
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.balanceCashbackModel,
                      updateCallback: () => safeSetState(() {}),
                      child: BalanceCashbackWidget(
                        cashBack: valueOrDefault<double>(
                          MainGroup.gETCashBackAvaliableCall.amount(
                            myCashBackGETCashBackAvaliableResponse.jsonBody,
                          ),
                          0.0,
                        ),
                      ),
                    ),
                    if (false)
                      wrapWithModel(
                        model: _model.tradeCashForProductsModel,
                        updateCallback: () => safeSetState(() {}),
                        child: TradeCashForProductsWidget(),
                      ),
                    wrapWithModel(
                      model: _model.tradeCashForAzulPointsModel,
                      updateCallback: () => safeSetState(() {}),
                      child: TradeCashForAzulPointsWidget(
                        cashBackAvaliable: valueOrDefault<double>(
                          MainGroup.gETCashBackAvaliableCall.amount(
                            myCashBackGETCashBackAvaliableResponse.jsonBody,
                          ),
                          0.0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: wrapWithModel(
                        model: _model.termsAndHelpCashModel,
                        updateCallback: () => safeSetState(() {}),
                        child: TermsAndHelpCashWidget(),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
                wrapWithModel(
                  model: _model.footDividerModel,
                  updateCallback: () => safeSetState(() {}),
                  child: FootDividerWidget(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
