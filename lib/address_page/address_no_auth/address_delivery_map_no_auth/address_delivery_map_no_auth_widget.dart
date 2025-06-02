import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'address_delivery_map_no_auth_model.dart';
export 'address_delivery_map_no_auth_model.dart';

class AddressDeliveryMapNoAuthWidget extends StatefulWidget {
  const AddressDeliveryMapNoAuthWidget({
    super.key,
    this.selectedPrediction,
    this.location,
    required this.edit,
    this.addressSelected,
  });

  final PredictionsStruct? selectedPrediction;
  final LatLng? location;
  final bool? edit;
  final AddressStruct? addressSelected;

  static String routeName = 'addressDeliveryMapNoAuth';
  static String routePath = 'addressDeliveryMapNoAuth';

  @override
  State<AddressDeliveryMapNoAuthWidget> createState() =>
      _AddressDeliveryMapNoAuthWidgetState();
}

class _AddressDeliveryMapNoAuthWidgetState
    extends State<AddressDeliveryMapNoAuthWidget> {
  late AddressDeliveryMapNoAuthModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressDeliveryMapNoAuthModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.position = widget!.location;
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                context.goNamed(AddressDeliveryNoAuthWidget.routeName);
              },
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                'sgoqloeg' /* ENDEREÇO */,
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
          body: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      FlutterFlowGoogleMap(
                        controller: _model.googleMapsController,
                        onCameraIdle: (latLng) =>
                            _model.googleMapsCenter = latLng,
                        initialLocation: _model.googleMapsCenter ??=
                            _model.position!,
                        markerColor: GoogleMarkerColor.violet,
                        mapType: MapType.normal,
                        style: GoogleMapStyle.standard,
                        initialZoom: 18.0,
                        allowInteraction: true,
                        allowZoom: true,
                        showZoomControls: true,
                        showLocation: false,
                        showCompass: false,
                        showMapToolbar: false,
                        showTraffic: false,
                        centerMapOnMarkerTap: false,
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: PointerInterceptor(
                          intercepting: isWeb,
                          child: Icon(
                            Icons.place_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 48.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      var _shouldSetState = false;
                      _model.mapsGeocode = await MapsPlaceGeocodeCall.call(
                        latlng: functions.latlngToString(widget!.location!),
                      );

                      _shouldSetState = true;
                      if ((_model.mapsGeocode?.succeeded ?? true)) {
                        FFAppState().address = AddressStruct(
                          address:
                              '${GeocodeStruct.maybeFromMap((_model.mapsGeocode?.jsonBody ?? ''))?.results?.firstOrNull?.addressComponents?.firstOrNull?.shortName} ${(GeocodeStruct.maybeFromMap((_model.mapsGeocode?.jsonBody ?? ''))?.results?.firstOrNull?.addressComponents?.elementAtOrNull(1))?.shortName} , ${'${((GeocodeStruct.maybeFromMap((_model.mapsGeocode?.jsonBody ?? ''))?.results?.elementAtOrNull(1))?.addressComponents?.elementAtOrNull(2))?.shortName}, ${((GeocodeStruct.maybeFromMap((_model.mapsGeocode?.jsonBody ?? ''))?.results?.elementAtOrNull(1))?.addressComponents?.elementAtOrNull(3))?.shortName}, ${((GeocodeStruct.maybeFromMap((_model.mapsGeocode?.jsonBody ?? ''))?.results?.elementAtOrNull(1))?.addressComponents?.elementAtOrNull(4))?.shortName}'}',
                          latitude: getJsonField(
                            functions.latLngToJson(_model.googleMapsCenter!),
                            r'''$.lat''',
                          ).toString(),
                          longitude: getJsonField(
                            functions.latLngToJson(_model.googleMapsCenter!),
                            r'''$.lng''',
                          ).toString(),
                          number: GeocodeStruct.maybeFromMap(
                                  (_model.mapsGeocode?.jsonBody ?? ''))
                              ?.results
                              ?.firstOrNull
                              ?.addressComponents
                              ?.firstOrNull
                              ?.shortName,
                        );
                        safeSetState(() {});

                        context.pushNamed(HomeNoAuthWidget.routeName);

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

                      if (_shouldSetState) safeSetState(() {});
                    },
                    text: FFLocalizations.of(context).getText(
                      'lvts8zry' /* CONFIRMAR LOCALIZAÇÃO */,
                    ),
                    options: FFButtonOptions(
                      width: 361.0,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
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
      ),
    );
  }
}
