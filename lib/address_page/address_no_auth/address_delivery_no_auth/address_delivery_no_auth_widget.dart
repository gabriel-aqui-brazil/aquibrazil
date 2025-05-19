import '/address_page/address_no_auth/address_no_auth/address_no_auth_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'address_delivery_no_auth_model.dart';
export 'address_delivery_no_auth_model.dart';

class AddressDeliveryNoAuthWidget extends StatefulWidget {
  const AddressDeliveryNoAuthWidget({super.key});

  static String routeName = 'addressDeliveryNoAuth';
  static String routePath = 'addressDeliveryNewNoAuth';

  @override
  State<AddressDeliveryNoAuthWidget> createState() =>
      _AddressDeliveryNoAuthWidgetState();
}

class _AddressDeliveryNoAuthWidgetState
    extends State<AddressDeliveryNoAuthWidget> {
  late AddressDeliveryNoAuthModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressDeliveryNoAuthModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0));
      await requestPermission(locationPermission);
      _model.location = currentUserLocationValue;
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xFFF7F7F7),
            automaticallyImplyLeading: false,
            leading: Visibility(
              visible: FFAppState().address.hasAddress(),
              child: FlutterFlowIconButton(
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
                  context.pushNamed(HomeNoAuthWidget.routeName);
                },
              ),
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                'cwc4ir03' /* ENDEREÇOS */,
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
          body: SafeArea(
            top: true,
            child: wrapWithModel(
              model: _model.addressNoAuthModel,
              updateCallback: () => safeSetState(() {}),
              child: AddressNoAuthWidget(
                cb: () async {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
