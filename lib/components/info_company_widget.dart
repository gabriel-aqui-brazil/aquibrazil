import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'info_company_model.dart';
export 'info_company_model.dart';

class InfoCompanyWidget extends StatefulWidget {
  const InfoCompanyWidget({
    super.key,
    required this.company,
    required this.customer,
  });

  final aquibrazil_library_oi8i5r_data_schema.CompanyStruct? company;
  final aquibrazil_library_oi8i5r_data_schema.CustomerStruct? customer;

  @override
  State<InfoCompanyWidget> createState() => _InfoCompanyWidgetState();
}

class _InfoCompanyWidgetState extends State<InfoCompanyWidget> {
  late InfoCompanyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoCompanyModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Stack(
                children: [
                  FlutterFlowGoogleMap(
                    controller: _model.googleMapsController,
                    onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
                    initialLocation: _model.googleMapsCenter ??=
                        functions.convertLatLng(
                            double.parse(widget!.company!.address.latitude),
                            double.parse(widget!.company!.address.longitude)),
                    markerColor: GoogleMarkerColor.violet,
                    mapType: MapType.normal,
                    style: GoogleMapStyle.standard,
                    initialZoom: 14.0,
                    allowInteraction: false,
                    allowZoom: false,
                    showZoomControls: false,
                    showLocation: false,
                    showCompass: false,
                    showMapToolbar: false,
                    showTraffic: false,
                    centerMapOnMarkerTap: false,
                  ),
                  PointerInterceptor(
                    intercepting: isWeb,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: PointerInterceptor(
                      intercepting: isWeb,
                      child: Icon(
                        FFIcons.kpin21,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 36.0,
                      ),
                    ),
                  ),
                  PointerInterceptor(
                    intercepting: isWeb,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 54.0, 12.0, 0.0),
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
                                      0.0, 2.0, 0.0, 0.0),
                                  child: Icon(
                                    Icons.close_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      functions.toUpperCase(valueOrDefault<String>(
                        widget!.company?.name,
                        '-',
                      )),
                      '-',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 15.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      functions.toUpperCase(valueOrDefault<String>(
                        widget!.company?.terciaryCategory?.name,
                        '-',
                      )),
                      '-',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 8.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        't5wte4ci' /* DESCRIÇÃO DA EMPRESA */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Anton',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      functions.toUpperCase(valueOrDefault<String>(
                        widget!.company?.description,
                        '-',
                      )),
                      '-',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
            Divider(
              height: 1.0,
              thickness: 1.0,
              indent: 12.0,
              endIndent: 12.0,
              color: Color(0xFFD3D3D3),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              FFIcons.kcompass,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            Flexible(
                              child: Text(
                                valueOrDefault<String>(
                                  functions.toUpperCase(valueOrDefault<String>(
                                    widget!.company?.address?.address,
                                    '-',
                                  )),
                                  '-',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                        Container(
                          width: double.infinity,
                          color: Color(0x00000000),
                          child: ExpandableNotifier(
                            controller: _model.expandableExpandableController,
                            child: ExpandablePanel(
                              header: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    FFIcons.kclock,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'dij9upi4' /* HOJE */,
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
                                      Text(
                                        valueOrDefault<String>(
                                          () {
                                            if (widget!.company!.open24) {
                                              return FFLocalizations.of(context)
                                                  .getVariableText(
                                                ptText: '24 Horas',
                                                enText: '24 Hours',
                                                esText: '24 Horas',
                                              );
                                            } else if (widget!
                                                .company!.operatingHour
                                                .where((e) =>
                                                    e.day ==
                                                    functions
                                                        .getCurrentDayWeek())
                                                .toList()
                                                .isNotEmpty) {
                                              return '${widget!.company?.operatingHour?.where((e) => e.day == functions.getCurrentDayWeek()).toList()?.firstOrNull?.openingTime != null && widget!.company?.operatingHour?.where((e) => e.day == functions.getCurrentDayWeek()).toList()?.firstOrNull?.openingTime != '' ? functions.formatHour(widget!.company!.operatingHour.where((e) => e.day == functions.getCurrentDayWeek()).toList().firstOrNull!.openingTime) : dateTimeFormat(
                                                  "h:mm a",
                                                  DateTime
                                                      .fromMillisecondsSinceEpoch(
                                                          valueOrDefault<int>(
                                                    widget!
                                                        .company?.operatingHour
                                                        ?.where((e) =>
                                                            e.day ==
                                                            functions
                                                                .getCurrentDayWeek())
                                                        .toList()
                                                        ?.firstOrNull
                                                        ?.openingHour,
                                                    0,
                                                  )),
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                )} - ${widget!.company?.operatingHour?.where((e) => e.day == functions.getCurrentDayWeek()).toList()?.firstOrNull?.closingTime != null && widget!.company?.operatingHour?.where((e) => e.day == functions.getCurrentDayWeek()).toList()?.firstOrNull?.closingTime != '' ? functions.formatHour(widget!.company!.operatingHour.where((e) => e.day == functions.getCurrentDayWeek()).toList().firstOrNull!.closingTime) : dateTimeFormat(
                                                  "h:mm a",
                                                  DateTime
                                                      .fromMillisecondsSinceEpoch(
                                                          valueOrDefault<int>(
                                                    widget!
                                                        .company?.operatingHour
                                                        ?.where((e) =>
                                                            e.day ==
                                                            functions
                                                                .getCurrentDayWeek())
                                                        .toList()
                                                        ?.firstOrNull
                                                        ?.closingHour,
                                                    0,
                                                  )),
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                )}';
                                            } else {
                                              return FFLocalizations.of(context)
                                                  .getVariableText(
                                                ptText: 'FECHADO',
                                                enText: 'CLOSED',
                                                esText: 'CERRADO',
                                              );
                                            }
                                          }(),
                                          '-',
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
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                              collapsed: Container(),
                              expanded: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    36.0, 8.0, 0.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final operatingHour = widget!
                                            .company?.operatingHour
                                            ?.sortedList(
                                                keyOf: (e) => e.day,
                                                desc: false)
                                            ?.toList() ??
                                        [];

                                    return ListView.separated(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: operatingHour.length,
                                      separatorBuilder: (_, __) =>
                                          SizedBox(height: 8.0),
                                      itemBuilder:
                                          (context, operatingHourIndex) {
                                        final operatingHourItem =
                                            operatingHour[operatingHourIndex];
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              functions.toUpperCase(
                                                  functions.getDayName(
                                                      FFLocalizations.of(
                                                              context)
                                                          .languageCode,
                                                      operatingHourItem.day)),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                            Text(
                                              widget!.company!.open24
                                                  ? FFLocalizations.of(context)
                                                      .getVariableText(
                                                      ptText: '24 Horas',
                                                      enText: '24 Hours',
                                                      esText: '24 Horas',
                                                    )
                                                  : '${operatingHourItem.openingTime != null && operatingHourItem.openingTime != '' ? functions.formatHour(operatingHourItem.openingTime) : dateTimeFormat(
                                                      "h:mm a",
                                                      DateTime
                                                          .fromMillisecondsSinceEpoch(
                                                              operatingHourItem
                                                                  .openingHour),
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    )} - ${operatingHourItem.closingTime != null && operatingHourItem.closingTime != '' ? functions.formatHour(operatingHourItem.closingTime) : dateTimeFormat(
                                                      "h:mm a",
                                                      DateTime
                                                          .fromMillisecondsSinceEpoch(
                                                              operatingHourItem
                                                                  .closingHour),
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    )}',
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
                                          ].divide(SizedBox(height: 4.0)),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              theme: ExpandableThemeData(
                                tapHeaderToExpand: true,
                                tapBodyToExpand: false,
                                tapBodyToCollapse: false,
                                headerAlignment:
                                    ExpandablePanelHeaderAlignment.center,
                                hasIcon: true,
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                          ),
                        ),
                        if (!widget!.customer!.membership.hasId())
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(MembershipWidget.routeName);
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 55.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF37B07E),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 1.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Lottie.asset(
                                                'assets/jsons/star-badge.json',
                                                width: 30.0,
                                                height: 30.0,
                                                fit: BoxFit.cover,
                                                animate: true,
                                              ),
                                              Flexible(
                                                child: Text(
                                                  'COM O AQUIPASS VOCÊ ECONOMIZA SEMPRE ${widget!.company?.defaultDiscount?.toString()}% NESTA EMPRESA.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 12.0,
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
                                              ),
                                            ].divide(SizedBox(width: 12.0)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ].divide(SizedBox(height: 24.0)),
                    ),
                  ),
                ],
              ),
            ),
          ].divide(SizedBox(height: 16.0)).addToEnd(SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
