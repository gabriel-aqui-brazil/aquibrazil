import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/companies/product/cart_product/select_prefered_time/select_prefered_time_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/membership/without_membership/membership_without/membership_without_widget.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cart5_model.dart';
export 'cart5_model.dart';

class Cart5Widget extends StatefulWidget {
  const Cart5Widget({
    super.key,
    required this.cart,
    this.deliveryTip,
    bool? isPickup,
    required this.duration,
    this.observation,
  }) : this.isPickup = isPickup ?? false;

  final aquibrazil_library_oi8i5r_data_schema.CartStruct? cart;
  final double? deliveryTip;
  final bool isPickup;
  final String? duration;
  final String? observation;

  @override
  State<Cart5Widget> createState() => _Cart5WidgetState();
}

class _Cart5WidgetState extends State<Cart5Widget> {
  late Cart5Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cart5Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 8.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'zz6tg1cz' /* REVISE SEU PEDIDO */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Anton',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return WebViewAware(
                      child: Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: SelectPreferedTimeWidget(
                          operatingHour: widget!.cart!.operatingHour,
                          deliveryDuration: widget!.cart!.deliveryDuration,
                        ),
                      ),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
              child: Container(
                width: double.infinity,
                height: 45.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            FFIcons.kscooter,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  widget!.isPickup ? 'RETIRADA' : 'ENTREGA',
                                  '--',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF1A1A1A),
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
                              Text(
                                valueOrDefault<String>(
                                  dateTimeFormat(
                                    "relative",
                                    DateTime.fromMillisecondsSinceEpoch(
                                        valueOrDefault<int>(
                                      FFAppState().preferredTimeDelivery != null
                                          ? FFAppState()
                                              .preferredTimeDelivery
                                              ?.millisecondsSinceEpoch
                                          : widget!.cart?.deliveryDurationDate,
                                      0,
                                    )),
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  '--',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF1A1A1A),
                                      fontSize: 10.0,
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
                        ].divide(SizedBox(width: 12.0)),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 45.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          FFIcons.klocation,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget!.isPickup
                                    ? 'LOCAL DA RETIRADA'
                                    : 'LOCAL DA ENTREGA',
                                '--',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1A1A1A),
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
                            Flexible(
                              child: Text(
                                valueOrDefault<String>(
                                  widget!.isPickup
                                      ? FFAppState()
                                          .cart
                                          .company
                                          .address
                                          .address
                                      : currentUserData?.address?.address,
                                  '--',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 10.0,
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
                          ].divide(SizedBox(height: 4.0)),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
              ),
            ),
            if (widget!.cart?.customer?.membership?.hasId() ?? true)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Lottie.asset(
                          'assets/jsons/star-badge.json',
                          width: 20.0,
                          height: 20.0,
                          fit: BoxFit.cover,
                          animate: true,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'x6rr7zw5' /* COM AQUIPASS VOCÊ ECONOMIZOU */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).verde,
                                    fontSize: 11.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: valueOrDefault<String>(
                              formatNumber(
                                widget!.cart?.aquipassSaved,
                                formatType: FormatType.custom,
                                currency: '\$',
                                format: '#,##0.00',
                                locale: 'en_us',
                              ),
                              '\$0.00',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).verde,
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primary,
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
                  ],
                ),
              ),
            if (widget!.cart?.customer?.membership?.hasId() ?? true)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Lottie.asset(
                          'assets/jsons/coin-dollar.json',
                          width: 20.0,
                          height: 20.0,
                          fit: BoxFit.cover,
                          animate: true,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'hjdvjqtf' /* GANHOU 3% DE CASHBACK */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 11.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: valueOrDefault<String>(
                              formatNumber(
                                widget!.cart?.cashback,
                                formatType: FormatType.custom,
                                currency: '\$',
                                format: '#,##0.00',
                                locale: 'en_us',
                              ),
                              '\$0.00',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primary,
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
                  ],
                ),
              ),
            if (false)
              Container(
                width: double.infinity,
                height: 45.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Builder(
                            builder: (context) {
                              if (FFAppState().paymentMethodSelected.brand ==
                                  'visa') {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/visa.png',
                                    width: 33.0,
                                    height: 23.0,
                                    fit: BoxFit.cover,
                                  ),
                                );
                              } else {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/mastercard-seeklogo.com_1.png',
                                    width: 33.0,
                                    height: 23.0,
                                    fit: BoxFit.contain,
                                  ),
                                );
                              }
                            },
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  functions.toUpperCase(FFAppState()
                                      .paymentMethodSelected
                                      .funding),
                                  '--',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        functions.toUpperCase(FFAppState()
                                            .paymentMethodSelected
                                            .brand),
                                        'BRAND',
                                      ),
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
                                            color: Color(0xFF808080),
                                            fontSize: 11.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'bq7o6bvh' /*  •••• */,
                                      ),
                                      style: TextStyle(),
                                    ),
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        FFAppState()
                                            .paymentMethodSelected
                                            .last4,
                                        '000',
                                      ),
                                      style: TextStyle(),
                                    )
                                  ],
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
                                        color: Color(0xFF808080),
                                        fontSize: 11.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: valueOrDefault<String>(
                                formatNumber(
                                  widget!.cart?.total,
                                  formatType: FormatType.custom,
                                  currency: '\$',
                                  format: '#,##0.00',
                                  locale: 'en_us',
                                ),
                                '\$0.00',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
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
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 16.0),
              child: FFButtonWidget(
                onPressed: () async {
                  var _shouldSetState = false;
                  if (!widget!.cart!.customer.membership.hasId()) {
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
                            child: MembershipWithoutWidget(),
                          ),
                        );
                      },
                    ).then(
                        (value) => safeSetState(() => _model.bsDimss = value));

                    _shouldSetState = true;
                    if (!_model.bsDimss!) {
                      if (_shouldSetState) safeSetState(() {});
                      return;
                    }
                  }
                  _model.apiResultd3r = await MainGroup.orderProductCall.call(
                    companyId: FFAppState().cart.company.id,
                    subtotal: widget!.cart?.subtotal,
                    taxAndServiceFee: widget!.cart?.taxAndService,
                    aquipassSaved: widget!.cart?.aquipassSaved,
                    membershipCashback: widget!.cart?.cashback,
                    totalAmount: widget!.cart?.total,
                    customerPaymentMethodId:
                        FFAppState().paymentMethodSelected.id,
                    itemsJson:
                        widget!.cart?.items?.map((e) => e.toMap()).toList(),
                    tip: widget!.deliveryTip,
                    deliveryFee: widget!.cart?.deliveryFee,
                    dropoffAddressId: currentUserData?.address?.id,
                    isPickup: widget!.isPickup,
                    token: currentAuthenticationToken,
                    observation: widget!.observation,
                    preferredTime: valueOrDefault<String>(
                      (FFAppState().preferredTimeDelivery != null
                              ? FFAppState()
                                  .preferredTimeDelivery
                                  ?.millisecondsSinceEpoch
                              : widget!.cart?.deliveryDurationDate)
                          ?.toString(),
                      '0',
                    ),
                  );

                  _shouldSetState = true;
                  if ((_model.apiResultd3r?.succeeded ?? true)) {
                    FFAppState().deleteCart();
                    FFAppState().cart =
                        aquibrazil_library_oi8i5r_data_schema.CartStruct();

                    FFAppState().preferredTimeDelivery = null;
                    FFAppState().orderSelected =
                        aquibrazil_library_oi8i5r_data_schema.OrderStruct
                            .maybeFromMap(
                                (_model.apiResultd3r?.jsonBody ?? ''))!;
                    FFAppState().update(() {});
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
                        defaultCard: currentUserData?.defaultCard,
                        document: currentUserData?.document,
                        lastOrderId:
                            aquibrazil_library_oi8i5r_data_schema.OrderStruct
                                    .maybeFromMap(
                                        (_model.apiResultd3r?.jsonBody ?? ''))
                                ?.id,
                      ),
                    );
                    Navigator.pop(context);

                    context.pushNamed(
                      TrackOrderWidget.routeName,
                      queryParameters: {
                        'orderId': serializeParam(
                          aquibrazil_library_oi8i5r_data_schema.OrderStruct
                                  .maybeFromMap(
                                      (_model.apiResultd3r?.jsonBody ?? ''))
                              ?.id,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );

                    if (_shouldSetState) safeSetState(() {});
                    return;
                  } else {
                    await action_blocks.errorAlertSnacbar(
                      context,
                      textPt: 'Ocorreu um erro: ${getJsonField(
                        (_model.apiResultd3r?.jsonBody ?? ''),
                        r'''$.message''',
                      ).toString()}',
                      textEs: 'Se produjo un error: ${getJsonField(
                        (_model.apiResultd3r?.jsonBody ?? ''),
                        r'''$.message''',
                      ).toString()}',
                      textEn: 'An error occurred: ${getJsonField(
                        (_model.apiResultd3r?.jsonBody ?? ''),
                        r'''$.message''',
                      ).toString()}',
                    );
                    Navigator.pop(context);
                    if (_shouldSetState) safeSetState(() {});
                    return;
                  }

                  if (_shouldSetState) safeSetState(() {});
                },
                text: FFLocalizations.of(context).getText(
                  'q0fi4ypv' /* FAZER PEDIDO */,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 55.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryText,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                        color: Colors.white,
                        fontSize: 13.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
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
