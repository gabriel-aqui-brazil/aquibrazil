import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'address_delivery_add_edit_model.dart';
export 'address_delivery_add_edit_model.dart';

class AddressDeliveryAddEditWidget extends StatefulWidget {
  const AddressDeliveryAddEditWidget({
    super.key,
    this.position,
    this.address,
  });

  final LatLng? position;
  final AddressStruct? address;

  static String routeName = 'addressDeliveryAddEdit';
  static String routePath = 'addressDeliveryDetails';

  @override
  State<AddressDeliveryAddEditWidget> createState() =>
      _AddressDeliveryAddEditWidgetState();
}

class _AddressDeliveryAddEditWidgetState
    extends State<AddressDeliveryAddEditWidget> {
  late AddressDeliveryAddEditModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressDeliveryAddEditModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.typeAddress = widget!.address?.type;
      safeSetState(() {});
      _model.apiResultu9b = await MapsPlaceGeocodeCall.call(
        latlng: functions.latlngToString(widget!.position!),
      );
    });

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.ruaTextController ??= TextEditingController();
    _model.ruaFocusNode ??= FocusNode();
    _model.ruaFocusNode!.addListener(() => safeSetState(() {}));

    _model.numberFocusNode ??= FocusNode();
    _model.numberFocusNode!.addListener(() => safeSetState(() {}));
    _model.complementTextController ??=
        TextEditingController(text: widget!.address?.address2);
    _model.complementFocusNode ??= FocusNode();

    _model.pontoDeReferenciaTextController ??=
        TextEditingController(text: widget!.address?.referencePoint);
    _model.pontoDeReferenciaFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: MapsPlaceGeocodeCall.call(
        latlng: functions.latlngToString(widget!.position!),
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
        final addressDeliveryAddEditMapsPlaceGeocodeResponse = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            resizeToAvoidBottomInset: false,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SingleChildScrollView(
              controller: _model.columnController,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 225.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Builder(builder: (context) {
                          final _googleMapMarker = widget!.position;
                          return FlutterFlowGoogleMap(
                            controller: _model.googleMapsController,
                            onCameraIdle: (latLng) =>
                                _model.googleMapsCenter = latLng,
                            initialLocation: _model.googleMapsCenter ??=
                                widget!.position!,
                            markers: [
                              if (_googleMapMarker != null)
                                FlutterFlowMarker(
                                  _googleMapMarker.serialize(),
                                  _googleMapMarker,
                                ),
                            ],
                            markerColor: GoogleMarkerColor.red,
                            mapType: MapType.normal,
                            style: GoogleMapStyle.standard,
                            initialZoom: 18.0,
                            allowInteraction: false,
                            allowZoom: false,
                            showZoomControls: true,
                            showLocation: false,
                            showCompass: false,
                            showMapToolbar: false,
                            showTraffic: false,
                            centerMapOnMarkerTap: false,
                          );
                        }),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 54.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 45.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                                onPressed: () async {
                                  context.safePop();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          24.0,
                          0.0,
                          valueOrDefault<double>(
                            (isWeb
                                    ? MediaQuery.viewInsetsOf(context).bottom >
                                        0
                                    : _isKeyboardVisible)
                                ? 300.0
                                : 0.0,
                            0.0,
                          )),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 325.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  GeocodeStruct.maybeFromMap(
                                                          addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                              .jsonBody)
                                                      ?.results
                                                      ?.firstOrNull
                                                      ?.addressComponents
                                                      ?.where((e) => e.types
                                                          .contains('route'))
                                                      .toList()
                                                      ?.firstOrNull
                                                      ?.longName,
                                                  '-',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 15.0,
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
                                                '${valueOrDefault<String>(
                                                  GeocodeStruct.maybeFromMap(
                                                          addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                              .jsonBody)
                                                      ?.results
                                                      ?.firstOrNull
                                                      ?.addressComponents
                                                      ?.where((e) => e.types
                                                          .contains(
                                                              'administrative_area_level_2'))
                                                      .toList()
                                                      ?.firstOrNull
                                                      ?.longName,
                                                  '-',
                                                )}, ${valueOrDefault<String>(
                                                  GeocodeStruct.maybeFromMap(
                                                          addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                              .jsonBody)
                                                      ?.results
                                                      ?.firstOrNull
                                                      ?.addressComponents
                                                      ?.where((e) => e.types
                                                          .contains('locality'))
                                                      .toList()
                                                      ?.firstOrNull
                                                      ?.longName,
                                                  '-',
                                                )}, ${valueOrDefault<String>(
                                                  GeocodeStruct.maybeFromMap(
                                                          addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                              .jsonBody)
                                                      ?.results
                                                      ?.firstOrNull
                                                      ?.addressComponents
                                                      ?.where((e) => e.types
                                                          .contains(
                                                              'administrative_area_level_1'))
                                                      .toList()
                                                      ?.firstOrNull
                                                      ?.shortName,
                                                  '-',
                                                )}',
                                                style: FlutterFlowTheme.of(
                                                        context)
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
                                                      color: Color(0xFF808080),
                                                      fontSize: 14.0,
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
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                    if (widget!.address == null)
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.editAddress = true;
                                          safeSetState(() {});
                                        },
                                        child: Icon(
                                          Icons.edit_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          if (_model.editAddress)
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '093znuxl' /* RUA (OBRIGATÓRIO) */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller:
                                                  _model.ruaTextController,
                                              focusNode: _model.ruaFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.ruaTextController',
                                                Duration(milliseconds: 1),
                                                () => safeSetState(() {}),
                                              ),
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.rubik(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'dtwc3jxx' /* Digite aqui o nome da rua */,
                                                ),
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFF999999),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFE6E6E6),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor: Color(0xFFF7F7F7),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                              cursorColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              validator: _model
                                                  .ruaTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ].divide(SizedBox(height: 8.0)),
                                  ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '7xohm1t6' /* NÚMERO (OBRIGATÓRIO) */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.numberTextController ??=
                                        TextEditingController(
                                      text: widget!.address != null
                                          ? widget!.address?.number
                                          : valueOrDefault<String>(
                                              GeocodeStruct.maybeFromMap(
                                                      addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                          .jsonBody)
                                                  ?.results
                                                  ?.firstOrNull
                                                  ?.addressComponents
                                                  ?.where((e) => e.types
                                                      .contains(
                                                          'street_number'))
                                                  .toList()
                                                  ?.firstOrNull
                                                  ?.longName,
                                              '-',
                                            ),
                                    ),
                                    focusNode: _model.numberFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.numberTextController',
                                      Duration(milliseconds: 200),
                                      () async {
                                        if (_model.numberTextController.text !=
                                                null &&
                                            _model.numberTextController.text !=
                                                '') {
                                          safeSetState(() {
                                            _model.withoutNumberValue = false;
                                          });
                                        } else {
                                          safeSetState(() {
                                            _model.withoutNumberValue = true;
                                          });
                                        }
                                      },
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.rubik(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'za1zhh6l' /* Digite aqui o número */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF999999),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFE6E6E6),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor:
                                          _model.withoutNumberValue == true
                                              ? Color(0xFFDBDBDB)
                                              : Color(0xFFF7F7F7),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.rubik(
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
                                    keyboardType: TextInputType.number,
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .numberTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                          ),
                                          child: Checkbox(
                                            value: _model.withoutNumberValue ??=
                                                false,
                                            onChanged: (newValue) async {
                                              safeSetState(() =>
                                                  _model.withoutNumberValue =
                                                      newValue!);
                                              if (newValue!) {
                                                safeSetState(() {
                                                  _model.numberTextController
                                                      ?.text = '';
                                                });
                                              }
                                            },
                                            side: (FlutterFlowTheme.of(context)
                                                        .alternate !=
                                                    null)
                                                ? BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate!,
                                                  )
                                                : null,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'jboxf5l9' /* ENDEREÇO SEM NÚMERO */,
                                          ),
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'ir0pl8lj' /* COMPLEMENTO */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                Container(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.complementTextController,
                                    focusNode: _model.complementFocusNode,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.rubik(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'pm6d9hsc' /* Digite aqui o complemento */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF999999),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFE6E6E6),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFF7F7F7),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.rubik(
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
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .complementTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'cbkek9fj' /* PONTO DE REFERÊNCIA (OBRIGATÓR... */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: _model
                                            .pontoDeReferenciaTextController,
                                        focusNode:
                                            _model.pontoDeReferenciaFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.pontoDeReferenciaTextController',
                                          Duration(milliseconds: 200),
                                          () async {
                                            await _model.columnController
                                                ?.animateTo(
                                              _model.columnController!.position
                                                  .maxScrollExtent,
                                              duration:
                                                  Duration(milliseconds: 100),
                                              curve: Curves.ease,
                                            );
                                          },
                                        ),
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.rubik(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'uyf99v9i' /* Ex: Próximo ao supermercado */,
                                          ),
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF999999),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFE6E6E6),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFFF7F7F7),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.rubik(
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
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .pontoDeReferenciaTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'asgzsjld' /* FAVORITAR ENDEREÇO (OBRIGATÓRI... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  controller: _model.rowController,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          _model.typeAddress = 'Casa';
                                          safeSetState(() {});
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'wzdomm4w' /* CASA */,
                                        ),
                                        icon: Icon(
                                          FFIcons.khome2,
                                          size: 22.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 105.0,
                                          height: 45.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconColor:
                                              _model.typeAddress == 'Casa'
                                                  ? Colors.white
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                          color: _model.typeAddress == 'Casa'
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0xFFF7F7F7),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    _model.typeAddress == 'Casa'
                                                        ? Colors.white
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(800.0),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          _model.typeAddress = 'Trabalho';
                                          safeSetState(() {});
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'yvmp38y8' /* TRABALHO */,
                                        ),
                                        icon: Icon(
                                          FFIcons.kshop,
                                          size: 20.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 133.0,
                                          height: 45.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconColor:
                                              _model.typeAddress == 'Trabalho'
                                                  ? Colors.white
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                          color:
                                              _model.typeAddress == 'Trabalho'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : Color(0xFFF7F7F7),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: _model.typeAddress ==
                                                        'Trabalho'
                                                    ? Colors.white
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(800.0),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          _model.typeAddress = 'Apartamento';
                                          safeSetState(() {});
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'w892ndy2' /* APARTAMENTO */,
                                        ),
                                        icon: Icon(
                                          FFIcons.kbuildings,
                                          size: 20.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 170.0,
                                          height: 45.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconColor: _model.typeAddress ==
                                                  'Apartamento'
                                              ? Colors.white
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          color:
                                              _model.typeAddress ==
                                                      'Apartamento'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : Color(0xFFF7F7F7),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: _model.typeAddress ==
                                                        'Apartamento'
                                                    ? Colors.white
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(800.0),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          _model.typeAddress = 'Hotel';
                                          safeSetState(() {});
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'fyq1lyyi' /* HOTEL */,
                                        ),
                                        icon: Icon(
                                          FFIcons.koutdoorTableRestaurant,
                                          size: 20.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 133.0,
                                          height: 45.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconColor:
                                              _model.typeAddress == 'Hotel'
                                                  ? Colors.white
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                          color: _model.typeAddress == 'Hotel'
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0xFFF7F7F7),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: _model.typeAddress ==
                                                        'Hotel'
                                                    ? Colors.white
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(800.0),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          _model.typeAddress = 'Outro';
                                          safeSetState(() {});
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'gqlcp0as' /* OUTRO */,
                                        ),
                                        icon: Icon(
                                          FFIcons.klocation,
                                          size: 20.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 133.0,
                                          height: 45.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconColor:
                                              _model.typeAddress == 'Outro'
                                                  ? Colors.white
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                          color: _model.typeAddress == 'Outro'
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0xFFF7F7F7),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color: _model.typeAddress ==
                                                        'Outro'
                                                    ? Colors.white
                                                    : FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(800.0),
                                        ),
                                      ),
                                    ]
                                        .divide(SizedBox(width: 8.0))
                                        .addToStart(SizedBox(width: 16.0)),
                                  ),
                                ),
                              ].divide(SizedBox(height: 12.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 10.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var _shouldSetState = false;
                                if ((((_model.numberTextController.text ==
                                                    null ||
                                                _model.numberTextController
                                                        .text ==
                                                    '') &&
                                            (_model.withoutNumberValue ==
                                                true)) ||
                                        ((_model.numberTextController.text !=
                                                    null &&
                                                _model.numberTextController
                                                        .text !=
                                                    '') &&
                                            (_model.withoutNumberValue ==
                                                false))) &&
                                    (_model.typeAddress != null &&
                                        _model.typeAddress != '') &&
                                    (_model.pontoDeReferenciaTextController
                                                .text !=
                                            null &&
                                        _model.pontoDeReferenciaTextController
                                                .text !=
                                            '')) {
                                  if (widget!.address != null) {
                                    _model.apiResult1an =
                                        await MainGroup.editAddressCall.call(
                                      address:
                                          '${_model.numberTextController.text != null && _model.numberTextController.text != '' ? '${_model.numberTextController.text} ' : ''}${valueOrDefault<String>(
                                        (GeocodeStruct.maybeFromMap(
                                                    addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                        .jsonBody)
                                                ?.results
                                                ?.firstOrNull
                                                ?.addressComponents
                                                ?.elementAtOrNull(1))
                                            ?.shortName,
                                        '-',
                                      )} , ${'${valueOrDefault<String>(
                                        ((GeocodeStruct.maybeFromMap(
                                                        addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                            .jsonBody)
                                                    ?.results
                                                    ?.elementAtOrNull(1))
                                                ?.addressComponents
                                                ?.elementAtOrNull(2))
                                            ?.shortName,
                                        '-',
                                      )}, ${valueOrDefault<String>(
                                        ((GeocodeStruct.maybeFromMap(
                                                        addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                            .jsonBody)
                                                    ?.results
                                                    ?.elementAtOrNull(1))
                                                ?.addressComponents
                                                ?.elementAtOrNull(3))
                                            ?.shortName,
                                        '-',
                                      )}, ${valueOrDefault<String>(
                                        ((GeocodeStruct.maybeFromMap(
                                                        addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                            .jsonBody)
                                                    ?.results
                                                    ?.elementAtOrNull(1))
                                                ?.addressComponents
                                                ?.elementAtOrNull(4))
                                            ?.shortName,
                                        '-',
                                      )}'}',
                                      zipcode: valueOrDefault<String>(
                                        ((GeocodeStruct.maybeFromMap(
                                                        addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                            .jsonBody)
                                                    ?.results
                                                    ?.elementAtOrNull(1))
                                                ?.addressComponents
                                                ?.elementAtOrNull(5))
                                            ?.shortName,
                                        '-',
                                      ),
                                      city: valueOrDefault<String>(
                                        ((GeocodeStruct.maybeFromMap(
                                                        addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                            .jsonBody)
                                                    ?.results
                                                    ?.elementAtOrNull(1))
                                                ?.addressComponents
                                                ?.elementAtOrNull(3))
                                            ?.shortName,
                                        '-',
                                      ),
                                      state: valueOrDefault<String>(
                                        ((GeocodeStruct.maybeFromMap(
                                                        addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                            .jsonBody)
                                                    ?.results
                                                    ?.elementAtOrNull(1))
                                                ?.addressComponents
                                                ?.elementAtOrNull(4))
                                            ?.shortName,
                                        '-',
                                      ),
                                      latitude: getJsonField(
                                        functions
                                            .latLngToJson(widget!.position!),
                                        r'''$.lat''',
                                      ).toString(),
                                      longitude: getJsonField(
                                        functions
                                            .latLngToJson(widget!.position!),
                                        r'''$.lng''',
                                      ).toString(),
                                      type: _model.typeAddress,
                                      address2:
                                          _model.complementTextController.text,
                                      referencePoint: _model
                                          .pontoDeReferenciaTextController.text,
                                      number: _model.numberTextController.text,
                                      addressId: widget!.address?.id,
                                      token: currentAuthenticationToken,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.apiResult1an?.succeeded ??
                                        true)) {
                                      context.goNamed(
                                          AddressDeliveryWidget.routeName);

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Endereço editado com sucesso.',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      await action_blocks.errorAlertSnacbar(
                                        context,
                                        textPt:
                                            'Ocorreu um erro de conexão, por favor, tente novamente',
                                        textEs:
                                            'Ocurrió un error de conexión, por favor inténtelo nuevamente.',
                                        textEn:
                                            'A connection error occurred, please try again.',
                                      );
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }
                                  } else {
                                    _model.apiResult50e =
                                        await MainGroup.insertAddressCall.call(
                                      address: _model.ruaTextController.text !=
                                                  null &&
                                              _model.ruaTextController.text !=
                                                  ''
                                          ? '${_model.numberTextController.text != null && _model.numberTextController.text != '' ? '${_model.numberTextController.text} ' : ''}${_model.ruaTextController.text} , ${'${valueOrDefault<String>(
                                              GeocodeStruct.maybeFromMap(
                                                      addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                          .jsonBody)
                                                  ?.results
                                                  ?.firstOrNull
                                                  ?.addressComponents
                                                  ?.where((e) => e.types.contains(
                                                      'administrative_area_level_2'))
                                                  .toList()
                                                  ?.firstOrNull
                                                  ?.longName,
                                              '-',
                                            )}, ${valueOrDefault<String>(
                                              GeocodeStruct.maybeFromMap(
                                                      addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                          .jsonBody)
                                                  ?.results
                                                  ?.firstOrNull
                                                  ?.addressComponents
                                                  ?.where((e) => e.types
                                                      .contains('locality'))
                                                  .toList()
                                                  ?.firstOrNull
                                                  ?.longName,
                                              '-',
                                            )}, ${valueOrDefault<String>(
                                              GeocodeStruct.maybeFromMap(
                                                      addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                          .jsonBody)
                                                  ?.results
                                                  ?.firstOrNull
                                                  ?.addressComponents
                                                  ?.where((e) => e.types.contains(
                                                      'administrative_area_level_1'))
                                                  .toList()
                                                  ?.firstOrNull
                                                  ?.shortName,
                                              '-',
                                            )}'}'
                                          : '${_model.numberTextController.text != null && _model.numberTextController.text != '' ? '${_model.numberTextController.text} ' : ''}${'${valueOrDefault<String>(
                                              GeocodeStruct.maybeFromMap(
                                                      addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                          .jsonBody)
                                                  ?.results
                                                  ?.firstOrNull
                                                  ?.addressComponents
                                                  ?.where((e) =>
                                                      e.types.contains('route'))
                                                  .toList()
                                                  ?.firstOrNull
                                                  ?.longName,
                                              '-',
                                            )},${valueOrDefault<String>(
                                              GeocodeStruct.maybeFromMap(
                                                      addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                          .jsonBody)
                                                  ?.results
                                                  ?.firstOrNull
                                                  ?.addressComponents
                                                  ?.where((e) => e.types.contains(
                                                      'administrative_area_level_2'))
                                                  .toList()
                                                  ?.firstOrNull
                                                  ?.longName,
                                              '-',
                                            )}, ${valueOrDefault<String>(
                                              GeocodeStruct.maybeFromMap(
                                                      addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                          .jsonBody)
                                                  ?.results
                                                  ?.firstOrNull
                                                  ?.addressComponents
                                                  ?.where((e) => e.types
                                                      .contains('locality'))
                                                  .toList()
                                                  ?.firstOrNull
                                                  ?.longName,
                                              '-',
                                            )}, ${valueOrDefault<String>(
                                              GeocodeStruct.maybeFromMap(
                                                      addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                          .jsonBody)
                                                  ?.results
                                                  ?.firstOrNull
                                                  ?.addressComponents
                                                  ?.where((e) => e.types.contains(
                                                      'administrative_area_level_1'))
                                                  .toList()
                                                  ?.firstOrNull
                                                  ?.shortName,
                                              '-',
                                            )}'}',
                                      zipcode: valueOrDefault<String>(
                                        GeocodeStruct.maybeFromMap(
                                                addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                    .jsonBody)
                                            ?.results
                                            ?.firstOrNull
                                            ?.addressComponents
                                            ?.where((e) =>
                                                e.types.contains('postal_code'))
                                            .toList()
                                            ?.firstOrNull
                                            ?.longName,
                                        '-',
                                      ),
                                      city: valueOrDefault<String>(
                                        GeocodeStruct.maybeFromMap(
                                                addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                    .jsonBody)
                                            ?.results
                                            ?.firstOrNull
                                            ?.addressComponents
                                            ?.where((e) =>
                                                e.types.contains('locality'))
                                            .toList()
                                            ?.firstOrNull
                                            ?.shortName,
                                        '-',
                                      ),
                                      state: valueOrDefault<String>(
                                        GeocodeStruct.maybeFromMap(
                                                addressDeliveryAddEditMapsPlaceGeocodeResponse
                                                    .jsonBody)
                                            ?.results
                                            ?.firstOrNull
                                            ?.addressComponents
                                            ?.where((e) => e.types.contains(
                                                'administrative_area_level_1'))
                                            .toList()
                                            ?.firstOrNull
                                            ?.shortName,
                                        '-',
                                      ),
                                      latitude: getJsonField(
                                        functions
                                            .latLngToJson(widget!.position!),
                                        r'''$.lat''',
                                      ).toString(),
                                      longitude: getJsonField(
                                        functions
                                            .latLngToJson(widget!.position!),
                                        r'''$.lng''',
                                      ).toString(),
                                      type: _model.typeAddress,
                                      address2:
                                          _model.complementTextController.text,
                                      referencePoint: _model
                                          .pontoDeReferenciaTextController.text,
                                      number: _model.numberTextController.text,
                                      token: currentAuthenticationToken,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.apiResult50e?.succeeded ??
                                        true)) {
                                      if (MainGroup.insertAddressCall.isMain(
                                        (_model.apiResult50e?.jsonBody ?? ''),
                                      )!) {
                                        authManager.updateAuthUserData(
                                          authenticationToken:
                                              currentAuthenticationToken,
                                          tokenExpiration:
                                              currentAuthTokenExpiration,
                                          authUid: currentUserUid,
                                          userData: UserStruct(
                                            id: currentUserData?.id,
                                            firstName:
                                                currentUserData?.firstName,
                                            lastName: currentUserData?.lastName,
                                            email: currentUserData?.email,
                                            biometric:
                                                currentUserData?.biometric,
                                            profilePicture:
                                                currentUserData?.profilePicture,
                                            location: currentUserData?.location,
                                            address: AddressStruct(
                                              id: MainGroup.insertAddressCall
                                                  .id(
                                                (_model.apiResult50e
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              address: MainGroup
                                                  .insertAddressCall
                                                  .address(
                                                (_model.apiResult50e
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              zipcode: MainGroup
                                                  .insertAddressCall
                                                  .zipcode(
                                                (_model.apiResult50e
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              city: MainGroup.insertAddressCall
                                                  .city(
                                                (_model.apiResult50e
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              state: MainGroup.insertAddressCall
                                                  .state(
                                                (_model.apiResult50e
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              address2: MainGroup
                                                  .insertAddressCall
                                                  .address2(
                                                (_model.apiResult50e
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              latitude: MainGroup
                                                  .insertAddressCall
                                                  .latitude(
                                                (_model.apiResult50e
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              longitude: MainGroup
                                                  .insertAddressCall
                                                  .logitude(
                                                (_model.apiResult50e
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              type: MainGroup.insertAddressCall
                                                  .type(
                                                (_model.apiResult50e
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              referencePoint: MainGroup
                                                  .insertAddressCall
                                                  .referencePoint(
                                                (_model.apiResult50e
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              number: MainGroup
                                                  .insertAddressCall
                                                  .number(
                                                (_model.apiResult50e
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                              isMain: MainGroup
                                                  .insertAddressCall
                                                  .isMain(
                                                (_model.apiResult50e
                                                        ?.jsonBody ??
                                                    ''),
                                              ),
                                            ),
                                            cashbackEarned:
                                                currentUserData?.cashbackEarned,
                                            phone: currentUserData?.phone,
                                            timezone: currentUserData?.timezone,
                                            defaultCard:
                                                currentUserData?.defaultCard,
                                            document: currentUserData?.document,
                                          ),
                                        );
                                      }

                                      context.goNamed(
                                          AddressDeliveryWidget.routeName);

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Endereço cadastrado com sucesso.',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      await action_blocks.errorAlertSnacbar(
                                        context,
                                        textPt:
                                            'Ocorreu um erro de conexão, por favor, tente novamente',
                                        textEs:
                                            'Ocurrió un error de conexión, por favor inténtelo nuevamente.',
                                        textEn:
                                            'A connection error occurred, please try again.',
                                      );
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }
                                  }
                                } else {
                                  if (_model.pontoDeReferenciaTextController
                                              .text ==
                                          null ||
                                      _model.pontoDeReferenciaTextController
                                              .text ==
                                          '') {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Informe um ponto de referência.',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    );
                                  } else if (_model.typeAddress == null ||
                                      _model.typeAddress == '') {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Selecione o tipo de endereço.',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Digite um número ou selecione endereço sem número.',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    );
                                  }

                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }

                                if (_shouldSetState) safeSetState(() {});
                              },
                              text: widget!.address != null
                                  ? 'ATUALIZAR ENDEREÇO'
                                  : 'SALVAR ENDEREÇO',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
