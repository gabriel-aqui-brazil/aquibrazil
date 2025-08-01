import '/backend/schema/structs/index.dart';
import '/companies/product/alert_mandatory_groups/alert_mandatory_groups_widget.dart';
import '/companies/product/cart_product/delivery_not_address/delivery_not_address_widget.dart';
import '/companies/product/contain_item_other_company/contain_item_other_company_widget.dart';
import '/companies/product/container_adicionais/container_adicionais_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/membership/without_membership/membership_without/membership_without_widget.dart';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'select_food_model.dart';
export 'select_food_model.dart';

class SelectFoodWidget extends StatefulWidget {
  const SelectFoodWidget({
    super.key,
    this.baseProduct,
    this.company,
    required this.customer,
  });

  final aquibrazil_library_oi8i5r_data_schema.BaseProductStruct? baseProduct;
  final aquibrazil_library_oi8i5r_data_schema.CompanyStruct? company;
  final aquibrazil_library_oi8i5r_data_schema.CustomerStruct? customer;

  @override
  State<SelectFoodWidget> createState() => _SelectFoodWidgetState();
}

class _SelectFoodWidgetState extends State<SelectFoodWidget> {
  late SelectFoodModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectFoodModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 220.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
              child: Image.network(
                widget!.baseProduct!.image.firstOrNull!.url,
                width: double.infinity,
                height: 220.0,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 48.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: Color(0x8D000000),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 3.0, 0.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.angleDown,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (false)
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 48.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x33000000),
                                offset: Offset(0.0, 0.0),
                              )
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 1.0),
                              child: Icon(
                                FFIcons.kshare,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 23.0,
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 100.0,
            decoration: BoxDecoration(
              color: Color(0xFFF7F7F7),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 24.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 24.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: Color(0xFFE6E6E6),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            FFIcons.kshop,
                                            color: Color(0xFF666666),
                                            size: 20.0,
                                          ),
                                          Text(
                                            functions.toUpperCase(
                                                widget!.company?.name),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFF666666),
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                functions
                                    .toUpperCase(widget!.baseProduct?.name),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (widget!.baseProduct?.isVegan ?? true)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/carrot.svg',
                                          width: 15.0,
                                          height: 15.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'x97mr0yt' /* VEGANO */,
                                            ),
                                            textAlign: TextAlign.center,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 10.0,
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
                                        ),
                                      ),
                                    ],
                                  ),
                                if (widget!.baseProduct?.isLactoseFree ?? true)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Milk.svg',
                                          width: 15.0,
                                          height: 15.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'emqo5xoe' /* ZERO LACTOSE */,
                                            ),
                                            textAlign: TextAlign.center,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 10.0,
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
                                        ),
                                      ),
                                    ],
                                  ),
                                if (widget!.baseProduct?.isGluttenFree ?? true)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Gluten.svg',
                                          width: 15.0,
                                          height: 15.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '2arzygto' /* NÃO CONTÊM GLUTEN */,
                                            ),
                                            textAlign: TextAlign.center,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 10.0,
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
                                        ),
                                      ),
                                    ],
                                  ),
                              ].divide(SizedBox(width: 4.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  formatNumber(
                                    widget!.baseProduct!.price,
                                    formatType: FormatType.custom,
                                    currency: '\$',
                                    format: '#,##0.00',
                                    locale: 'en_us',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF61C360),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                if (widget!.baseProduct?.price !=
                                    widget!.baseProduct?.originalPrice)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        formatNumber(
                                          widget!.baseProduct!.originalPrice,
                                          formatType: FormatType.custom,
                                          currency: '\$',
                                          format: '#,##0.00',
                                          locale: 'en_us',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.roboto(
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF666666),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            ),
                                      ),
                                      Container(
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFC9F36C),
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 2.0, 4.0, 2.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.arrow_downward,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 10.0,
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  '${formatNumber(
                                                    ((widget!.baseProduct!
                                                                    .originalPrice -
                                                                widget!
                                                                    .baseProduct!
                                                                    .price) /
                                                            widget!.baseProduct!
                                                                .originalPrice) *
                                                        100,
                                                    formatType:
                                                        FormatType.custom,
                                                    format: '##.#',
                                                    locale: '',
                                                  )}%',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 2.0)),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                functions.toUpperCase(valueOrDefault<String>(
                                  widget!.baseProduct?.description,
                                  'description',
                                )),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
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
                  ),
                  Builder(
                    builder: (context) {
                      final addonGroupList =
                          widget!.baseProduct?.addonGroup?.toList() ?? [];

                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(addonGroupList.length,
                              (addonGroupListIndex) {
                            final addonGroupListItem =
                                addonGroupList[addonGroupListIndex];
                            return StickyHeader(
                              overlapHeaders: false,
                              header: Container(
                                width: double.infinity,
                                constraints: BoxConstraints(
                                  maxWidth: 430.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  functions.toUpperCase(
                                                      addonGroupListItem.name),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Anton',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: addonGroupListItem
                                                                .isMandatory
                                                            ? 'ESCOLHA DE ${addonGroupListItem.minQuantity.toString()} ATÉ '
                                                            : 'ESCOLHA ATÉ ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
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
                                                                          .normal,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      TextSpan(
                                                        text: addonGroupListItem
                                                            .maxQuantity
                                                            .toString(),
                                                        style:
                                                            GoogleFonts.inter(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'nehxroxg' /*  OPÇÕES */,
                                                        ),
                                                        style:
                                                            GoogleFonts.inter(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                        ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (addonGroupListItem.isMandatory)
                                            Container(
                                              height: 25.0,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 5.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'm0bsq612' /* OBRIGATÓRIO */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .poppins(
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
                                                          color: Colors.white,
                                                          fontSize: 10.0,
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
                                                ),
                                              ),
                                            ),
                                          Builder(
                                            builder: (context) {
                                              if (!(FFAppState()
                                                      .addons
                                                      .where((e) =>
                                                          e.addonGroup.id ==
                                                          addonGroupListItem.id)
                                                      .toList()
                                                      .isNotEmpty) &&
                                                  addonGroupListItem
                                                      .isMandatory) {
                                                return Lottie.asset(
                                                  'assets/jsons/Animation_-_1715008191376.json',
                                                  width: 20.0,
                                                  height: 20.0,
                                                  fit: BoxFit.contain,
                                                  animate: true,
                                                );
                                              } else {
                                                return Icon(
                                                  FFIcons.kcheckSquare,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .verde,
                                                  size: 20.0,
                                                );
                                              }
                                            },
                                          ),
                                        ].divide(SizedBox(width: 10.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              content: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 12.0),
                                child: Container(
                                  width: double.infinity,
                                  constraints: BoxConstraints(
                                    maxWidth: 430.0,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Builder(
                                      builder: (context) {
                                        final productsAddon = addonGroupListItem
                                            .productAddon
                                            .toList();

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: productsAddon.length,
                                          itemBuilder:
                                              (context, productsAddonIndex) {
                                            final productsAddonItem =
                                                productsAddon[
                                                    productsAddonIndex];
                                            return Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 8.0),
                                                child:
                                                    ContainerAdicionaisWidget(
                                                  key: Key(
                                                      'Keytcf_${productsAddonIndex}_of_${productsAddon.length}'),
                                                  addonDetails:
                                                      productsAddonItem,
                                                  baseProduct:
                                                      widget!.baseProduct!,
                                                  addonGroup:
                                                      addonGroupListItem,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 95.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 0.0,
                color: FlutterFlowTheme.of(context).corButtonMenu,
                offset: Offset(
                  0.0,
                  0.0,
                ),
                spreadRadius: 1.0,
              )
            ],
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      var _shouldSetState = false;
                      if (!widget!.customer!.membership.hasId()) {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return WebViewAware(
                              child: Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: MembershipWithoutWidget(),
                              ),
                            );
                          },
                        ).then((value) =>
                            safeSetState(() => _model.membership = value));

                        _shouldSetState = true;
                        if (_model.membership!) {
                          if (widget!.company!.distance <=
                              widget!.company!.maxDeliveryDistance) {
                            if ((FFAppState().cart.company.id ==
                                    widget!.company?.id) ||
                                !(FFAppState().cart.items.isNotEmpty)) {
                              if (!(functions
                                  .getAddonsMandatoryisNotSet(
                                      widget!.baseProduct!.addonGroup.toList(),
                                      FFAppState().addons.toList())
                                  .isNotEmpty)) {
                                FFAppState().updateCartStruct(
                                  (e) => e
                                    ..updateItems(
                                      (e) => e.add(
                                          aquibrazil_library_oi8i5r_data_schema
                                              .CartBaseProductStruct(
                                        baseProduct: widget!.baseProduct,
                                        addons: FFAppState().addons,
                                        quantity: _model.count,
                                        unitPrice: widget!.baseProduct?.price,
                                        priceSumWithAddon: widget!
                                                .baseProduct!.price +
                                            functions.sumAddons(
                                                FFAppState().addons.toList()),
                                      )),
                                    )
                                    ..company = widget!.company,
                                );
                                FFAppState().update(() {});
                                FFAppState().addons = [];
                                FFAppState().update(() {});
                                Navigator.pop(context);

                                context.pushNamed(Cart1Widget.routeName);

                                if (_shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return WebViewAware(
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: AlertMandatoryGroupsWidget(
                                          mandatoryGroups: functions
                                              .getAddonsMandatoryisNotSet(
                                                  widget!
                                                      .baseProduct!.addonGroup
                                                      .toList(),
                                                  FFAppState().addons.toList()),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }
                            } else {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: ContainItemOtherCompanyWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(
                                  () => _model.resultClearCart2 = value));

                              _shouldSetState = true;
                              if (_model.resultClearCart2!) {
                                FFAppState().deleteCart();
                                FFAppState().cart =
                                    aquibrazil_library_oi8i5r_data_schema
                                        .CartStruct();

                                FFAppState().preferredTimeDelivery = null;
                                FFAppState().update(() {});
                                if (!(functions
                                    .getAddonsMandatoryisNotSet(
                                        widget!.baseProduct!.addonGroup
                                            .toList(),
                                        FFAppState().addons.toList())
                                    .isNotEmpty)) {
                                  FFAppState().updateCartStruct(
                                    (e) => e
                                      ..updateItems(
                                        (e) => e.add(
                                            aquibrazil_library_oi8i5r_data_schema
                                                .CartBaseProductStruct(
                                          baseProduct: widget!.baseProduct,
                                          addons: FFAppState().addons,
                                          quantity: _model.count,
                                          unitPrice: widget!.baseProduct?.price,
                                          priceSumWithAddon: widget!
                                                  .baseProduct!.price +
                                              functions.sumAddons(
                                                  FFAppState().addons.toList()),
                                        )),
                                      )
                                      ..company = widget!.company,
                                  );
                                  FFAppState().update(() {});
                                  FFAppState().addons = [];
                                  FFAppState().update(() {});
                                  Navigator.pop(context);

                                  context.pushNamed(Cart1Widget.routeName);

                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return WebViewAware(
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: AlertMandatoryGroupsWidget(
                                            mandatoryGroups: functions
                                                .getAddonsMandatoryisNotSet(
                                                    widget!
                                                        .baseProduct!.addonGroup
                                                        .toList(),
                                                    FFAppState()
                                                        .addons
                                                        .toList()),
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));

                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }
                              } else {
                                Navigator.pop(context);
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }
                            }
                          } else {
                            Navigator.pop(context);
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return WebViewAware(
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: DeliveryNotAddressWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));

                            if (_shouldSetState) safeSetState(() {});
                            return;
                          }
                        } else {
                          if (_shouldSetState) safeSetState(() {});
                          return;
                        }
                      } else {
                        if (widget!.company!.distance <=
                            widget!.company!.maxDeliveryDistance) {
                          if ((FFAppState().cart.company.id ==
                                  widget!.company?.id) ||
                              !(FFAppState().cart.items.isNotEmpty)) {
                            if (!(functions
                                .getAddonsMandatoryisNotSet(
                                    widget!.baseProduct!.addonGroup.toList(),
                                    FFAppState().addons.toList())
                                .isNotEmpty)) {
                              FFAppState().updateCartStruct(
                                (e) => e
                                  ..updateItems(
                                    (e) => e.add(
                                        aquibrazil_library_oi8i5r_data_schema
                                            .CartBaseProductStruct(
                                      baseProduct: widget!.baseProduct,
                                      addons: FFAppState().addons,
                                      quantity: _model.count,
                                      unitPrice: widget!.baseProduct?.price,
                                      priceSumWithAddon:
                                          widget!.baseProduct!.price +
                                              functions.sumAddons(
                                                  FFAppState().addons.toList()),
                                    )),
                                  )
                                  ..company = widget!.company,
                              );
                              FFAppState().update(() {});
                              FFAppState().addons = [];
                              FFAppState().update(() {});
                              Navigator.pop(context);

                              context.pushNamed(Cart1Widget.routeName);

                              if (_shouldSetState) safeSetState(() {});
                              return;
                            } else {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return WebViewAware(
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: AlertMandatoryGroupsWidget(
                                        mandatoryGroups: functions
                                            .getAddonsMandatoryisNotSet(
                                                widget!.baseProduct!.addonGroup
                                                    .toList(),
                                                FFAppState().addons.toList()),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));

                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }
                          } else {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return WebViewAware(
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: ContainItemOtherCompanyWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(
                                () => _model.resultClearCart = value));

                            _shouldSetState = true;
                            if (_model.resultClearCart!) {
                              FFAppState().deleteCart();
                              FFAppState().cart =
                                  aquibrazil_library_oi8i5r_data_schema
                                      .CartStruct();

                              FFAppState().preferredTimeDelivery = null;
                              FFAppState().update(() {});
                              if (!(functions
                                  .getAddonsMandatoryisNotSet(
                                      widget!.baseProduct!.addonGroup.toList(),
                                      FFAppState().addons.toList())
                                  .isNotEmpty)) {
                                FFAppState().updateCartStruct(
                                  (e) => e
                                    ..updateItems(
                                      (e) => e.add(
                                          aquibrazil_library_oi8i5r_data_schema
                                              .CartBaseProductStruct(
                                        baseProduct: widget!.baseProduct,
                                        addons: FFAppState().addons,
                                        quantity: _model.count,
                                        unitPrice: widget!.baseProduct?.price,
                                        priceSumWithAddon: widget!
                                                .baseProduct!.price +
                                            functions.sumAddons(
                                                FFAppState().addons.toList()),
                                      )),
                                    )
                                    ..company = widget!.company,
                                );
                                FFAppState().update(() {});
                                FFAppState().addons = [];
                                FFAppState().update(() {});
                                Navigator.pop(context);

                                context.pushNamed(Cart1Widget.routeName);

                                if (_shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return WebViewAware(
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: AlertMandatoryGroupsWidget(
                                          mandatoryGroups: functions
                                              .getAddonsMandatoryisNotSet(
                                                  widget!
                                                      .baseProduct!.addonGroup
                                                      .toList(),
                                                  FFAppState().addons.toList()),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }
                            } else {
                              Navigator.pop(context);
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }
                          }
                        } else {
                          Navigator.pop(context);
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return WebViewAware(
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: DeliveryNotAddressWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));

                          if (_shouldSetState) safeSetState(() {});
                          return;
                        }
                      }

                      if (_shouldSetState) safeSetState(() {});
                    },
                    child: Container(
                      width: 120.0,
                      height: 54.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  FFIcons.kgroup8223,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: 20.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 2.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'mrzxm9g4' /* ADICIONAR */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                            Text(
                              formatNumber(
                                (widget!.baseProduct!.price +
                                        functions.sumAddons(
                                            FFAppState().addons.toList())) *
                                    _model.count,
                                formatType: FormatType.custom,
                                currency: '\$',
                                format: '#,##0.00',
                                locale: 'en_us',
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
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 40.0,
                          buttonSize: 24.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          disabledColor: FlutterFlowTheme.of(context).alternate,
                          icon: FaIcon(
                            FontAwesomeIcons.minus,
                            color: FlutterFlowTheme.of(context).info,
                            size: 8.0,
                          ),
                          onPressed: (_model.count == 1)
                              ? null
                              : () async {
                                  _model.count = _model.count + -1;
                                  safeSetState(() {});
                                },
                        ),
                        Text(
                          _model.count.toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.rubik(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 40.0,
                          buttonSize: 24.0,
                          fillColor: FlutterFlowTheme.of(context).primary,
                          icon: FaIcon(
                            FontAwesomeIcons.plus,
                            color: FlutterFlowTheme.of(context).info,
                            size: 8.0,
                          ),
                          onPressed: () async {
                            _model.count = _model.count + 1;
                            safeSetState(() {});
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ].divide(SizedBox(width: 20.0)),
            ),
          ),
        ),
      ],
    );
  }
}
