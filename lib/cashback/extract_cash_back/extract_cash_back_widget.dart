import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'extract_cash_back_model.dart';
export 'extract_cash_back_model.dart';

class ExtractCashBackWidget extends StatefulWidget {
  const ExtractCashBackWidget({super.key});

  static String routeName = 'extractCashBack';
  static String routePath = 'extractCashBack';

  @override
  State<ExtractCashBackWidget> createState() => _ExtractCashBackWidgetState();
}

class _ExtractCashBackWidgetState extends State<ExtractCashBackWidget> {
  late ExtractCashBackModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExtractCashBackModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: MainGroup.gETCashbackTransactionHistoryCall.call(
        token: currentAuthenticationToken,
      ),
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
        final extractCashBackGETCashbackTransactionHistoryResponse =
            snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).info,
                  size: 20.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'cwfys5na' /* EXTRATO DE CASHBACK */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Anton',
                      color: FlutterFlowTheme.of(context).info,
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FutureBuilder<ApiCallResponse>(
                        future: MainGroup.gETCashBackAvaliableCall.call(
                          token: currentAuthenticationToken,
                        ),
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
                          final containerGETCashBackAvaliableResponse =
                              snapshot.data!;

                          return Container(
                            width: double.infinity,
                            height: 85.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F7F7),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'f9jq8i7m' /* SALDO ATUAL */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF808080),
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Lottie.asset(
                                                'assets/jsons/coin-dollar.json',
                                                width: 25.0,
                                                height: 25.0,
                                                fit: BoxFit.cover,
                                                animate: true,
                                              ),
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: valueOrDefault<
                                                          String>(
                                                        formatNumber(
                                                          MainGroup
                                                              .gETCashBackAvaliableCall
                                                              .amount(
                                                            containerGETCashBackAvaliableResponse
                                                                .jsonBody,
                                                          ),
                                                          formatType:
                                                              FormatType.custom,
                                                          format: '#,##0.00',
                                                          locale: 'en_us',
                                                        ),
                                                        '\$0.00',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .roboto(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8.0)),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      Container(
                        width: 361.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'ajs93m50' /* HISTÓRICO DE CASHBACK */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Anton',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '2n3nlq45' /* ENTENDA DE ONDE SEU CASHBACK C... */,
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
                                    color: Color(0xFF4D4D4D),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final cashbackItems =
                                (extractCashBackGETCashbackTransactionHistoryResponse
                                                .jsonBody
                                                .toList()
                                                .map<CashbackTransactionStruct?>(
                                                    CashbackTransactionStruct
                                                        .maybeFromMap)
                                                .toList()
                                            as Iterable<
                                                CashbackTransactionStruct?>)
                                        .withoutNulls
                                        ?.toList() ??
                                    [];
                            if (cashbackItems.isEmpty) {
                              return Center(
                                child: EmptyListWidget(
                                  header: FFLocalizations.of(context).getText(
                                    'j7lxiioh' /* VOCÊ AINDA NÃO GANHOU CASHBACK */,
                                  ),
                                  content: FFLocalizations.of(context).getText(
                                    '46p6lb2y' /* COMEÇE A EXPLORAR SUA CONTA AQ... */,
                                  ),
                                ),
                              );
                            }

                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: cashbackItems.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 16.0),
                              itemBuilder: (context, cashbackItemsIndex) {
                                final cashbackItemsItem =
                                    cashbackItems[cashbackItemsIndex];
                                return Container(
                                  width: double.infinity,
                                  height: 75.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Builder(
                                              builder: (context) {
                                                if ((cashbackItemsItem
                                                            .transactionType ==
                                                        TransactionType.earn) &&
                                                    cashbackItemsItem
                                                        .isProcessed) {
                                                  return Icon(
                                                    FFIcons.kmoney1,
                                                    color: Color(0xFF61C360),
                                                    size: 22.0,
                                                  );
                                                } else if (cashbackItemsItem
                                                        .transactionType ==
                                                    TransactionType
                                                        .redeemAzul) {
                                                  return Icon(
                                                    FFIcons.kplane,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 20.0,
                                                  );
                                                } else {
                                                  return Icon(
                                                    FFIcons.kmoney,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 22.0,
                                                  );
                                                }
                                              },
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        cashbackItemsItem
                                                                    .transactionType ==
                                                                TransactionType
                                                                    .redeemAzul
                                                            ? 'AZUL POINTS'
                                                            : valueOrDefault<
                                                                String>(
                                                                'PEDIDO #${valueOrDefault<String>(
                                                                  cashbackItemsItem
                                                                      .order
                                                                      .number
                                                                      .toString(),
                                                                  '0',
                                                                )}',
                                                                'Pedido #',
                                                              ),
                                                        'Pedido #',
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
                                                        () {
                                                          if (cashbackItemsItem
                                                                  .transactionType ==
                                                              TransactionType
                                                                  .earn) {
                                                            return valueOrDefault<
                                                                String>(
                                                              functions.toUpperCase(
                                                                  valueOrDefault<
                                                                      String>(
                                                                cashbackItemsItem
                                                                    .order
                                                                    .company
                                                                    .name,
                                                                '--',
                                                              )),
                                                              '--',
                                                            );
                                                          } else if (cashbackItemsItem
                                                                  .transactionType ==
                                                              TransactionType
                                                                  .redeem) {
                                                            return valueOrDefault<
                                                                String>(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getVariableText(
                                                                ptText:
                                                                    'Resgatado',
                                                                enText:
                                                                    'Rescued',
                                                                esText:
                                                                    'Rescatado',
                                                              ),
                                                              'Rescatado',
                                                            );
                                                          } else if (cashbackItemsItem
                                                                  .transactionType ==
                                                              TransactionType
                                                                  .redeemAzul) {
                                                            return valueOrDefault<
                                                                String>(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getVariableText(
                                                                ptText:
                                                                    'Pontos Azul',
                                                                enText:
                                                                    'Azul points',
                                                                esText:
                                                                    'Pontos Azul',
                                                              ),
                                                              'Pontos Azul',
                                                            );
                                                          } else {
                                                            return valueOrDefault<
                                                                String>(
                                                              functions.toUpperCase(
                                                                  valueOrDefault<
                                                                      String>(
                                                                cashbackItemsItem
                                                                    .order
                                                                    .company
                                                                    .name,
                                                                '--',
                                                              )),
                                                              '--',
                                                            );
                                                          }
                                                        }(),
                                                        '--',
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
                                                      SizedBox(height: 5.0)),
                                                ),
                                              ].divide(SizedBox(width: 12.0)),
                                            ),
                                          ].divide(SizedBox(width: 20.0)),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                formatNumber(
                                                  cashbackItemsItem.amount,
                                                  formatType: FormatType.custom,
                                                  currency: '\$',
                                                  format: '#,##0.00',
                                                  locale: 'en_us',
                                                ),
                                                '\$ 0,00',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color:
                                                        valueOrDefault<Color>(
                                                      () {
                                                        if (cashbackItemsItem
                                                                .transactionType ==
                                                            TransactionType
                                                                .refund) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .error;
                                                        } else if (cashbackItemsItem
                                                                .transactionType ==
                                                            TransactionType
                                                                .redeemAzul) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .error;
                                                        } else if (cashbackItemsItem
                                                                .transactionType ==
                                                            TransactionType
                                                                .earn) {
                                                          return Color(
                                                              0xFF61C360);
                                                        } else {
                                                          return Color(
                                                              0xFF61C360);
                                                        }
                                                      }(),
                                                      Color(0xFF61C360),
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
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
                                                  "M/d/y",
                                                  DateTime
                                                      .fromMillisecondsSinceEpoch(
                                                          valueOrDefault<int>(
                                                    cashbackItemsItem.createdAt,
                                                    0,
                                                  )),
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                '----/--/--',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                                        color:
                                                            Color(0xFF4D4D4D),
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
                                      ].divide(SizedBox(width: 16.0)),
                                    ),
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
              ),
            ),
          ),
        );
      },
    );
  }
}
