import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/companies/temp4_appointment/temp4_appointment_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import "package:aquibrazil_library_oi8i5r/flutter_flow/nav/serialization_util.dart"
    as aquibrazil_library_oi8i5r_serialization_util;
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'temp3_appointment_model.dart';
export 'temp3_appointment_model.dart';

class Temp3AppointmentWidget extends StatefulWidget {
  const Temp3AppointmentWidget({
    super.key,
    required this.product,
    required this.company,
    bool? hasMoreService,
  }) : this.hasMoreService = hasMoreService ?? false;

  final aquibrazil_library_oi8i5r_data_schema.BaseProductStruct? product;
  final aquibrazil_library_oi8i5r_data_schema.CompanyStruct? company;
  final bool hasMoreService;

  static String routeName = 'temp3-appointment';
  static String routePath = 'temp3Appointment';

  @override
  State<Temp3AppointmentWidget> createState() => _Temp3AppointmentWidgetState();
}

class _Temp3AppointmentWidgetState extends State<Temp3AppointmentWidget> {
  late Temp3AppointmentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Temp3AppointmentModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.dates = functions
          .calendarMonth(getCurrentTimestamp, '')
          .toList()
          .cast<DateTime>();
      _model.dateSelected = getCurrentTimestamp;
      safeSetState(() {});
    });
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
      child: PopScope(
        canPop: false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
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
                context.goNamed(
                  ServiceWidget.routeName,
                  queryParameters: {
                    'company': aquibrazil_library_oi8i5r_serialization_util
                        .serializeParam(
                      widget!.company,
                      aquibrazil_library_oi8i5r_serialization_util
                          .ParamType.DataStruct,
                    ),
                  }.withoutNulls,
                );
              },
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                '5rpqq4ia' /* SOLICITAR MINHA RESERVA */,
              ),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Anton',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0.0,
          ),
          body: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Color(0x10000000),
                                offset: Offset(
                                  2.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 4.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          functions.toUpperCase(dateTimeFormat(
                                            "MMMM",
                                            _model.dates.lastOrNull,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )),
                                          '-',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 30.0,
                                          fillColor: Color(0xFFF7F7F7),
                                          icon: Icon(
                                            Icons.arrow_back_sharp,
                                            color: Colors.black,
                                            size: 14.0,
                                          ),
                                          onPressed: () async {
                                            _model.dates = functions
                                                .calendarMonth(
                                                    _model.dates.lastOrNull,
                                                    'previous')
                                                .toList()
                                                .cast<DateTime>();
                                            safeSetState(() {});
                                          },
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 30.0,
                                          fillColor: Color(0xFFF7F7F7),
                                          icon: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.black,
                                            size: 14.0,
                                          ),
                                          onPressed: () async {
                                            _model.dates = functions
                                                .calendarMonth(
                                                    _model.dates.lastOrNull,
                                                    'next')
                                                .toList()
                                                .cast<DateTime>();
                                            safeSetState(() {});
                                          },
                                        ),
                                      ].divide(SizedBox(width: 8.0)),
                                    ),
                                  ].divide(SizedBox(width: 4.0)),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'x1i4wqw7' /* D */,
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
                                                color: Colors.black,
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
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '5wok2w0y' /* S */,
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
                                                color: Colors.black,
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
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '212mt88n' /* T */,
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
                                                color: Colors.black,
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
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'fbyfnpoj' /* Q */,
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
                                                color: Colors.black,
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
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'exfga09n' /* Q */,
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
                                                color: Colors.black,
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
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'j0xgdydw' /* S */,
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
                                                color: Colors.black,
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
                                      Expanded(
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '2pgun3qj' /* S */,
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
                                                color: Colors.black,
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
                                    ].divide(SizedBox(width: 4.0)),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Builder(
                                    builder: (context) {
                                      final currentMonth =
                                          _model.dates.toList();

                                      return GridView.builder(
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 7,
                                          crossAxisSpacing: 4.0,
                                          mainAxisSpacing: 4.0,
                                          childAspectRatio: 1.0,
                                        ),
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: currentMonth.length,
                                        itemBuilder:
                                            (context, currentMonthIndex) {
                                          final currentMonthItem =
                                              currentMonth[currentMonthIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (functions
                                                  .isFutureDate(dateTimeFormat(
                                                "y-MM-dd",
                                                currentMonthItem,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ))) {
                                                _model.dateSelected =
                                                    currentMonthItem;
                                                _model.hourSet = false;
                                                safeSetState(() {});
                                                safeSetState(() =>
                                                    _model.apiRequestCompleter =
                                                        null);
                                                await _model
                                                    .waitForApiRequestCompleted();
                                              }
                                            },
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 200),
                                              curve: Curves.easeInOut,
                                              height: 35.0,
                                              decoration: BoxDecoration(
                                                color: valueOrDefault<Color>(
                                                  dateTimeFormat(
                                                            "dd/MM/y",
                                                            currentMonthItem,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ) ==
                                                          dateTimeFormat(
                                                            "dd/MM/y",
                                                            _model.dateSelected,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                      : Colors.transparent,
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        800.0),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    dateTimeFormat(
                                                              "dd/MM/y",
                                                              currentMonthItem,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ) ==
                                                            '31/12/9999'
                                                        ? ''
                                                        : dateTimeFormat(
                                                            "dd",
                                                            currentMonthItem,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                    '-',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.rubik(
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
                                                        color: () {
                                                          if (dateTimeFormat(
                                                                "dd/MM/y",
                                                                currentMonthItem,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ) ==
                                                              dateTimeFormat(
                                                                "dd/MM/y",
                                                                _model
                                                                    .dateSelected,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )) {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground;
                                                          } else if (functions
                                                              .isFutureDate(
                                                                  dateTimeFormat(
                                                            "y-MM-dd",
                                                            currentMonthItem,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ))) {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText;
                                                          } else {
                                                            return Color(
                                                                0xFFD6D6D6);
                                                          }
                                                        }(),
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
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'am1b2klm' /* ESCOLHA O(A) PROFISSIONAL */,
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
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 100.0,
                          decoration: BoxDecoration(),
                          child: FutureBuilder<ApiCallResponse>(
                            future: MainGroup.queryAppointmentProviderCall.call(
                              baseProductId: widget!.product?.id,
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 35.0,
                                    ),
                                  ),
                                );
                              }
                              final listViewQueryAppointmentProviderResponse =
                                  snapshot.data!;

                              return Builder(
                                builder: (context) {
                                  final provider =
                                      (listViewQueryAppointmentProviderResponse
                                                      .jsonBody
                                                      .toList()
                                                      .map<
                                                              aquibrazil_library_oi8i5r_data_schema
                                                              .UserStruct?>(
                                                          aquibrazil_library_oi8i5r_data_schema
                                                              .UserStruct
                                                              .maybeFromMap)
                                                      .toList()
                                                  as Iterable<
                                                      aquibrazil_library_oi8i5r_data_schema
                                                      .UserStruct?>)
                                              .withoutNulls
                                              ?.toList() ??
                                          [];

                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      12.0,
                                      0,
                                      12.0,
                                      0,
                                    ),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: provider.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(width: 8.0),
                                    itemBuilder: (context, providerIndex) {
                                      final providerItem =
                                          provider[providerIndex];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.providerSelected =
                                              providerItem;
                                          _model.chooseForMe = false;
                                          safeSetState(() {});
                                          safeSetState(() => _model
                                              .apiRequestCompleter = null);
                                          await _model
                                              .waitForApiRequestCompleted();
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 55.0,
                                              height: 55.0,
                                              decoration: BoxDecoration(),
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 1.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50.0),
                                                      child: Image.network(
                                                        providerItem
                                                            .profilePicture,
                                                        width: 50.0,
                                                        height: 50.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  if (providerItem.id ==
                                                      _model
                                                          .providerSelected?.id)
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    32.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FaIcon(
                                                          FontAwesomeIcons
                                                              .solidCheckCircle,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 16.0,
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                            Flexible(
                                              child: Container(
                                                width: 50.0,
                                                decoration: BoxDecoration(),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    functions.toUpperCase(
                                                        '${providerItem.firstName} ${providerItem.lastName}'),
                                                    '-',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                                        color: providerItem
                                                                    .id ==
                                                                _model
                                                                    .providerSelected
                                                                    ?.id
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : FlutterFlowTheme
                                                                    .of(context)
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
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    thickness: 1.0,
                    indent: 16.0,
                    endIndent: 16.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  if (_model.providerSelected != null)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'k8x8gxjg' /* HORÁRIOS DISPONÍVEIS */,
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 0.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: (_model.apiRequestCompleter ??= Completer<
                                      ApiCallResponse>()
                                    ..complete(MainGroup
                                        .queryAppointmentCheckHourCall
                                        .call(
                                      date: _model.dateSelected != null
                                          ? dateTimeFormat(
                                              "y-MM-dd",
                                              _model.dateSelected,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            )
                                          : dateTimeFormat(
                                              "y-MM-dd",
                                              getCurrentTimestamp,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                      providerId:
                                          _model.providerSelected != null
                                              ? _model.providerSelected?.id
                                              : '',
                                      companyId: widget!.company?.id,
                                      baseProductId: widget!.product?.id,
                                      token: currentAuthenticationToken,
                                      timezone: currentUserData?.timezone,
                                    )))
                                  .future,
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 35.0,
                                      height: 35.0,
                                      child: SpinKitFadingCircle(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 35.0,
                                      ),
                                    ),
                                  );
                                }
                                final containerQueryAppointmentCheckHourResponse =
                                    snapshot.data!;

                                return Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final hou = (containerQueryAppointmentCheckHourResponse
                                                      .jsonBody
                                                      .toList()
                                                      .map<
                                                              aquibrazil_library_oi8i5r_data_schema
                                                              .ProviderWorkScheduleStruct?>(
                                                          aquibrazil_library_oi8i5r_data_schema
                                                              .ProviderWorkScheduleStruct
                                                              .maybeFromMap)
                                                      .toList()
                                                  as Iterable<
                                                      aquibrazil_library_oi8i5r_data_schema
                                                      .ProviderWorkScheduleStruct?>)
                                              .withoutNulls
                                              ?.toList() ??
                                          [];

                                      return GridView.builder(
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 16.0,
                                          mainAxisSpacing: 16.0,
                                          childAspectRatio: 2.5,
                                        ),
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: hou.length,
                                        itemBuilder: (context, houIndex) {
                                          final houItem = hou[houIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (_model.providerSelected !=
                                                  null) {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return WebViewAware(
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          FocusScope.of(context)
                                                              .unfocus();
                                                          FocusManager.instance
                                                              .primaryFocus
                                                              ?.unfocus();
                                                        },
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              Temp4AppointmentWidget(
                                                            dateSelected: functions
                                                                .appointmentDateTime(
                                                                    dateTimeFormat(
                                                                      "y-MM-dd",
                                                                      _model
                                                                          .dateSelected,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    ),
                                                                    houItem
                                                                        .startTime),
                                                            company: widget!
                                                                .company!,
                                                            baseProduct: widget!
                                                                .product!,
                                                            provider: _model
                                                                .providerSelected!,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              }
                                            },
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 0.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Container(
                                                width: 110.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          dateTimeFormat(
                                                            "h:mm a",
                                                            DateTime.fromMillisecondsSinceEpoch(
                                                                houItem
                                                                    .startTime),
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          '-:-',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 8.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                ].divide(SizedBox(height: 12.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
