import '/address_page/address_search_list/address_search_list_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'address_no_auth_model.dart';
export 'address_no_auth_model.dart';

class AddressNoAuthWidget extends StatefulWidget {
  const AddressNoAuthWidget({
    super.key,
    required this.cb,
  });

  final Future Function()? cb;

  @override
  State<AddressNoAuthWidget> createState() => _AddressNoAuthWidgetState();
}

class _AddressNoAuthWidgetState extends State<AddressNoAuthWidget> {
  late AddressNoAuthModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressNoAuthModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => safeSetState(() => currentUserLocationValue = loc));
    _model.searchInputTextController ??= TextEditingController();
    _model.searchInputFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
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

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).info,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            width: 250.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F7F7),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              width: 250.0,
                              child: TextFormField(
                                controller: _model.searchInputTextController,
                                focusNode: _model.searchInputFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.searchInputTextController',
                                  Duration(milliseconds: 1000),
                                  () => safeSetState(() {}),
                                ),
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: false,
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'f17wir60' /* BUSCAR ENDEREÇO E NÚMERO... */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF808080),
                                        fontSize: 13.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                  alignLabelWithHint: false,
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  prefixIcon: Icon(
                                    FFIcons.ksearch2,
                                    color: Color(0xFF808080),
                                    size: 16.0,
                                  ),
                                  suffixIcon: _model.searchInputTextController!
                                          .text.isNotEmpty
                                      ? InkWell(
                                          onTap: () async {
                                            _model.searchInputTextController
                                                ?.clear();
                                            safeSetState(() {});
                                          },
                                          child: Icon(
                                            Icons.clear,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 14.0,
                                          ),
                                        )
                                      : null,
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
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                keyboardType: TextInputType.streetAddress,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .searchInputTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    ),
                    if (_model.searchInputTextController.text == null ||
                        _model.searchInputTextController.text == '')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            currentUserLocationValue =
                                await getCurrentUserLocation(
                                    defaultLocation: LatLng(0.0, 0.0));

                            context.goNamed(
                              AddressDeliveryMapNoAuthWidget.routeName,
                              queryParameters: {
                                'edit': serializeParam(
                                  false,
                                  ParamType.bool,
                                ),
                                'location': serializeParam(
                                  currentUserLocationValue,
                                  ParamType.LatLng,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F7F7),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Icon(
                                    FFIcons.klocationTargetIconUia,
                                    color: Color(0xFF666666),
                                    size: 24.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 12.0),
                                  child: Container(
                                    width: 301.0,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '79d98c7e' /* USAR LOCALIZAÇÃO ATUAL */,
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
                                                fontSize: 13.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        FutureBuilder<ApiCallResponse>(
                                          future: MapsPlaceGeocodeCall.call(
                                            latlng: functions.latlngToString(
                                                currentUserLocationValue!),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: Image.asset(
                                                  'projects/mE0o3DUMem2PBSBV2xgB/assets/hj58uh1it70k/logosite_1.png',
                                                ),
                                              );
                                            }
                                            final textMapsPlaceGeocodeResponse =
                                                snapshot.data!;

                                            return Text(
                                              '${valueOrDefault<String>(
                                                (GeocodeStruct.maybeFromMap(
                                                            textMapsPlaceGeocodeResponse
                                                                .jsonBody)
                                                        ?.results
                                                        ?.firstOrNull
                                                        ?.addressComponents
                                                        ?.elementAtOrNull(1))
                                                    ?.shortName,
                                                '-',
                                              )} - ${valueOrDefault<String>(
                                                ((GeocodeStruct.maybeFromMap(
                                                                textMapsPlaceGeocodeResponse
                                                                    .jsonBody)
                                                            ?.results
                                                            ?.elementAtOrNull(
                                                                1))
                                                        ?.addressComponents
                                                        ?.elementAtOrNull(2))
                                                    ?.shortName,
                                                '-',
                                              )} - ${valueOrDefault<String>(
                                                (GeocodeStruct.maybeFromMap(
                                                            textMapsPlaceGeocodeResponse
                                                                .jsonBody)
                                                        ?.results
                                                        ?.firstOrNull
                                                        ?.addressComponents
                                                        ?.elementAtOrNull(3))
                                                    ?.shortName,
                                                '-',
                                              )}',
                                              maxLines: 2,
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
                                                            Color(0xFF808080),
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
                                            );
                                          },
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                          ),
                        ),
                      ),
                    if (_model.searchInputTextController.text != null &&
                        _model.searchInputTextController.text != '')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: MapsPlaceAutocompleteCall.call(
                            input: _model.searchInputTextController.text,
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
                            final listViewMapsPlaceAutocompleteResponse =
                                snapshot.data!;

                            return Builder(
                              builder: (context) {
                                final addressList =
                                    MapsPlacesSearchStruct.maybeFromMap(
                                                listViewMapsPlaceAutocompleteResponse
                                                    .jsonBody)
                                            ?.predictions
                                            ?.toList() ??
                                        [];

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: addressList.length,
                                  itemBuilder: (context, addressListIndex) {
                                    final addressListItem =
                                        addressList[addressListIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        var _shouldSetState = false;
                                        _model.apiResultjng2 =
                                            await MapsPlaceDetailsCall.call(
                                          placeid: addressListItem.placeId,
                                        );

                                        _shouldSetState = true;
                                        if ((_model.apiResultjng2?.succeeded ??
                                            true)) {
                                          context.goNamed(
                                            AddressDeliveryMapNoAuthWidget
                                                .routeName,
                                            queryParameters: {
                                              'edit': serializeParam(
                                                false,
                                                ParamType.bool,
                                              ),
                                              'location': serializeParam(
                                                functions.convertLatLng(
                                                    getJsonField(
                                                      (_model.apiResultjng2
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.result.geometry.location.lat''',
                                                    ),
                                                    getJsonField(
                                                      (_model.apiResultjng2
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.result.geometry.location.lng''',
                                                    )),
                                                ParamType.LatLng,
                                              ),
                                            }.withoutNulls,
                                          );
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return WebViewAware(
                                                child: AlertDialog(
                                                  title: Text('OPS...'),
                                                  content: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getVariableText(
                                                    ptText:
                                                        'ERRO AO SELECIONAR ENDEREÇO, TENTE NOVAMENTE',
                                                    enText:
                                                        'ERROR SELECTING ADDRESS, TRY AGAIN',
                                                    esText:
                                                        'ERROR AL SELECCIONAR LA DIRECCIÓN, INTÉNTELO DE NUEVO',
                                                  )),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Ok'),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                      },
                                      child: AddressSearchListWidget(
                                        key: Key(
                                            'Key63j_${addressListIndex}_of_${addressList.length}'),
                                        mainAdd: addressListItem
                                            .structuredFormatting.mainText,
                                        secAdd: addressListItem
                                            .structuredFormatting.secondaryText,
                                      ),
                                    );
                                  },
                                );
                              },
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
    );
  }
}
