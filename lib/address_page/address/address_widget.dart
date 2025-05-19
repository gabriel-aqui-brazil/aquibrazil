import '/address_page/address_search_list/address_search_list_widget.dart';
import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'address_model.dart';
export 'address_model.dart';

class AddressWidget extends StatefulWidget {
  const AddressWidget({
    super.key,
    required this.cb,
  });

  final Future Function()? cb;

  @override
  State<AddressWidget> createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
  late AddressModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressModel());

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
                                    'pe1jpzqj' /* BUSCAR ENDEREÇO E NÚMERO... */,
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
                                      fontSize: 13.0,
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
                              AddressDeliveryMapWidget.routeName,
                              queryParameters: {
                                'location': serializeParam(
                                  currentUserLocationValue,
                                  ParamType.LatLng,
                                ),
                                'edit': serializeParam(
                                  false,
                                  ParamType.bool,
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
                                    size: 20.0,
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
                                            't2k2ydpf' /* Usar localização atual */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
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
                                                child: SizedBox(
                                                  width: 35.0,
                                                  height: 35.0,
                                                  child: SpinKitFadingCircle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 35.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            final textMapsPlaceGeocodeResponse =
                                                snapshot.data!;

                                            return Text(
                                              valueOrDefault<String>(
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
                                                'ADDRESS',
                                              ),
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
                                        _model.apiResultjng =
                                            await MapsPlaceDetailsCall.call(
                                          placeid: addressListItem.placeId,
                                        );

                                        _shouldSetState = true;
                                        if ((_model.apiResultjng?.succeeded ??
                                            true)) {
                                          context.goNamed(
                                            AddressDeliveryMapWidget.routeName,
                                            queryParameters: {
                                              'edit': serializeParam(
                                                false,
                                                ParamType.bool,
                                              ),
                                              'location': serializeParam(
                                                functions.convertLatLng(
                                                    getJsonField(
                                                      (_model.apiResultjng
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.result.geometry.location.lat''',
                                                    ),
                                                    getJsonField(
                                                      (_model.apiResultjng
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
                                                  title: Text('OPS..'),
                                                  content: Text(
                                                      valueOrDefault<String>(
                                                    FFLocalizations.of(context)
                                                        .getVariableText(
                                                      ptText:
                                                          'ERRO AO SELECIONAR ENDEREÇO, TENTE NOVAMENTE',
                                                      enText:
                                                          'ERROR SELECTING ADDRESS, TRY AGAIN',
                                                      esText:
                                                          'ERROR AL SELECCIONAR LA DIRECCIÓN, INTÉNTELO DE NUEVO',
                                                    ),
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
                                            'Key9d4_${addressListIndex}_of_${addressList.length}'),
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
                    if ((_model.searchInputTextController.text == null ||
                            _model.searchInputTextController.text == '') &&
                        loggedIn)
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: (_model.apiRequestCompleter ??=
                                  Completer<ApiCallResponse>()
                                    ..complete(MainGroup.queryAddressCall.call(
                                      token: currentAuthenticationToken,
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
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 35.0,
                                  ),
                                ),
                              );
                            }
                            final listViewQueryAddressResponse = snapshot.data!;

                            return Builder(
                              builder: (context) {
                                final addressQueryList =
                                    (listViewQueryAddressResponse.jsonBody
                                                    .toList()
                                                    .map<AddressStruct?>(
                                                        AddressStruct.maybeFromMap)
                                                    .toList()
                                                as Iterable<AddressStruct?>)
                                            .withoutNulls
                                            ?.toList() ??
                                        [];

                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: addressQueryList.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 16.0),
                                  itemBuilder:
                                      (context, addressQueryListIndex) {
                                    final addressQueryListItem =
                                        addressQueryList[addressQueryListIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        var _shouldSetState = false;
                                        _model.outputAddress = await MainGroup
                                            .updateAddressCall
                                            .call(
                                          addressId: addressQueryListItem.id,
                                          isMain: true,
                                          token: currentAuthenticationToken,
                                        );

                                        _shouldSetState = true;
                                        if ((_model.outputAddress?.succeeded ??
                                            true)) {
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
                                              lastName:
                                                  currentUserData?.lastName,
                                              email: currentUserData?.email,
                                              biometric:
                                                  currentUserData?.biometric,
                                              profilePicture: currentUserData
                                                  ?.profilePicture,
                                              location:
                                                  currentUserData?.location,
                                              address: addressQueryListItem,
                                              cashbackEarned: currentUserData
                                                  ?.cashbackEarned,
                                              phone: currentUserData?.phone,
                                              timezone:
                                                  currentUserData?.timezone,
                                              defaultCard:
                                                  currentUserData?.defaultCard,
                                              document:
                                                  currentUserData?.document,
                                              lastOrderId:
                                                  currentUserData?.lastOrderId,
                                            ),
                                          );
                                          FFAppState()
                                              .clearCacheHomePageCacheKey(
                                                  valueOrDefault<String>(
                                            currentUserData?.id,
                                            '--',
                                          ));
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Endereço alterado com sucesso',
                                                style: GoogleFonts.poppins(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 2000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                          safeSetState(() => _model
                                              .apiRequestCompleter = null);
                                          await _model
                                              .waitForApiRequestCompleted();
                                          await widget.cb?.call();
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                valueOrDefault<String>(
                                                  FFLocalizations.of(context)
                                                      .getVariableText(
                                                    ptText:
                                                        'OCORREU UM ERRO AO MODIFICAR SEU ENDEREÇO, TENTE NOVAMENTE',
                                                    enText:
                                                        'AN ERROR OCCURRED WHILE CHANGING YOUR ADDRESS, PLEASE TRY AGAIN',
                                                    esText:
                                                        'SE PRODUJO UN ERROR AL CAMBIAR SU DIRECCIÓN, POR FAVOR INTÉNTELO DE NUEVO',
                                                  ),
                                                  'AN ERROR OCCURRED WHILE CHANGING YOUR ADDRESS, PLEASE TRY AGAIN',
                                                ),
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                          if (_shouldSetState)
                                            safeSetState(() {});
                                          return;
                                        }

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 185.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: addressQueryListItem.isMain
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : Color(0xFFE6E6E6),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(12.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Builder(
                                                              builder:
                                                                  (context) {
                                                                if ((addressQueryListItem
                                                                            .type !=
                                                                        'Casa') &&
                                                                    (addressQueryListItem
                                                                            .type !=
                                                                        'Trabalho')) {
                                                                  return Icon(
                                                                    FFIcons
                                                                        .kcompass,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 24.0,
                                                                  );
                                                                } else if (addressQueryListItem
                                                                        .type ==
                                                                    'Casa') {
                                                                  return Icon(
                                                                    FFIcons
                                                                        .kapartmentHomeIconUia,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 24.0,
                                                                  );
                                                                } else {
                                                                  return Visibility(
                                                                    visible: addressQueryListItem
                                                                            .type ==
                                                                        'Trabalho',
                                                                    child: Icon(
                                                                      FFIcons
                                                                          .ksuitcaseLines1,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  );
                                                                }
                                                              },
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        functions.toUpperCase(functions.getAddressFromIndex(
                                                                            addressQueryListItem.address,
                                                                            0,
                                                                            0)),
                                                                        '--',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.poppins(
                                                                              fontWeight: FontWeight.w600,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        functions.getAddressFromIndex(
                                                                            addressQueryListItem.address,
                                                                            1,
                                                                            99),
                                                                        '--',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.inter(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Color(0xFF808080),
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      height:
                                                                          4.0)),
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 12.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 14.0,
                                                          height: 14.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                              color: addressQueryListItem
                                                                          .isMain ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : Color(
                                                                      0xFFE6E6E6),
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 12.0)),
                                                  ),
                                                ),
                                                Divider(
                                                  thickness: 1.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Expanded(
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            context.goNamed(
                                                              AddressDeliveryMapWidget
                                                                  .routeName,
                                                              queryParameters: {
                                                                'edit':
                                                                    serializeParam(
                                                                  true,
                                                                  ParamType
                                                                      .bool,
                                                                ),
                                                                'addressSelected':
                                                                    serializeParam(
                                                                  addressQueryListItem,
                                                                  ParamType
                                                                      .DataStruct,
                                                                ),
                                                                'location':
                                                                    serializeParam(
                                                                  functions.convertLatLng(
                                                                      double.parse(
                                                                          addressQueryListItem
                                                                              .latitude),
                                                                      double.parse(
                                                                          addressQueryListItem
                                                                              .longitude)),
                                                                  ParamType
                                                                      .LatLng,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'fsxmhnxe' /* EDITAR */,
                                                          ),
                                                          icon: Icon(
                                                            Icons.edit_outlined,
                                                            size: 18.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 165.0,
                                                            height: 45.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Color(
                                                                0x00FFFFFF),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          13.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFFE6E6E6),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        800.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            var _shouldSetState =
                                                                false;
                                                            if (addressQueryListItem
                                                                .isMain) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getVariableText(
                                                                        ptText:
                                                                            'Você não pode excluir um endereço que está atualmente em uso. Troque de endereço para seguir com a exclusão.',
                                                                        enText:
                                                                            'You cannot delete an address that is currently in use. Please change the address to proceed with deletion.',
                                                                        esText:
                                                                            'No puedes eliminar una dirección que esté actualmente en uso. Cambiar la dirección para proceder con la eliminación.',
                                                                      ),
                                                                      'No puedes eliminar una dirección que esté actualmente en uso. Cambiar la dirección para proceder con la eliminación.',
                                                                    ),
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFFB91C1C),
                                                                ),
                                                              );
                                                              if (_shouldSetState)
                                                                safeSetState(
                                                                    () {});
                                                              return;
                                                            } else {
                                                              _model.apiResultuhs =
                                                                  await MainGroup
                                                                      .updateAddressCopyCall
                                                                      .call(
                                                                addressId:
                                                                    addressQueryListItem
                                                                        .id,
                                                                token:
                                                                    currentAuthenticationToken,
                                                              );

                                                              _shouldSetState =
                                                                  true;
                                                              if ((_model
                                                                      .apiResultuhs
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                safeSetState(() =>
                                                                    _model.apiRequestCompleter =
                                                                        null);
                                                                await _model
                                                                    .waitForApiRequestCompleted();
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .clearSnackBars();
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                  SnackBar(
                                                                    content:
                                                                        Text(
                                                                      'Endereço excluído com sucesso.',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                    ),
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            4000),
                                                                    backgroundColor:
                                                                        Color(
                                                                            0xFF319B6F),
                                                                  ),
                                                                );
                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                                return;
                                                              } else {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return WebViewAware(
                                                                      child:
                                                                          AlertDialog(
                                                                        title: Text(
                                                                            'OPS..'),
                                                                        content:
                                                                            Text(valueOrDefault<String>(
                                                                          FFLocalizations.of(context)
                                                                              .getVariableText(
                                                                            ptText:
                                                                                'Não foi possivel remover este endereço, tente novamente',
                                                                            enText:
                                                                                'Unable to remove this address, please try again',
                                                                            esText:
                                                                                'No se puede eliminar esta dirección, inténtelo de nuevo.',
                                                                          ),
                                                                          'Unable to remove this address, please try again',
                                                                        )),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                                if (_shouldSetState)
                                                                  safeSetState(
                                                                      () {});
                                                                return;
                                                              }
                                                            }

                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                          },
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            '5vscpy87' /* EXCLUIR */,
                                                          ),
                                                          icon: Icon(
                                                            FFIcons
                                                                .ktrashBinMinimalistic2,
                                                            size: 18.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 165.0,
                                                            height: 45.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Color(
                                                                0x00FFFFFF),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          13.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFFE6E6E6),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        800.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ]
                                                        .divide(SizedBox(
                                                            width: 16.0))
                                                        .around(SizedBox(
                                                            width: 16.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
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
