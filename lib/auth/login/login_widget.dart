import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'package:aquibrazil_library_oi8i5r/custom_code/actions/index.dart'
    as aquibrazil_library_oi8i5r_actions;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  static String routeName = 'login';
  static String routePath = 'login';

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await requestPermission(notificationsPermission);
      FFAppState().signupEmailToValidate = '';
      FFAppState().deleteCart();
      FFAppState().cart = aquibrazil_library_oi8i5r_data_schema.CartStruct();

      FFAppState().deleteOrderSelected();
      FFAppState().orderSelected =
          aquibrazil_library_oi8i5r_data_schema.OrderStruct();

      FFAppState().phoneNumber = '';
      FFAppState().membershipPlanSelected =
          aquibrazil_library_oi8i5r_data_schema.PriceStruct();
      _model.fcm = await aquibrazil_library_oi8i5r_actions.getFCMToken();
      FFAppState().tokenFCM = _model.fcm!;
    });

    _model.emailCadastroTextController ??= TextEditingController();
    _model.emailCadastroFocusNode ??= FocusNode();

    _model.senhaCadastroTextController ??= TextEditingController();
    _model.senhaCadastroFocusNode ??= FocusNode();

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.38,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/mulher.webp',
                    ).image,
                  ),
                ),
                child: Container(
                  width: 100.0,
                  height: MediaQuery.sizeOf(context).height * 0.476,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0x00FFFFFF), Colors.white],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                  ),
                  alignment: AlignmentDirectional(0.0, 1.0),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'cs41qw1u' /* FAÇA LOGIN PARA CONTINUAR */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.w900,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF1A1A1A),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w900,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextFormField(
                            controller: _model.emailCadastroTextController,
                            focusNode: _model.emailCadastroFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'jtd4o57l' /* SEU EMAIL */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              alignLabelWithHint: false,
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 13.0,
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
                                  color: Color(0xFFE6E6E6),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Icon(
                                FFIcons.ksms,
                                color: Color(0xFF1A1A1A),
                                size: 18.0,
                              ),
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
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Color(0xFF1A1A1A),
                            validator: _model
                                .emailCadastroTextControllerValidator
                                .asValidator(context),
                          ),
                          TextFormField(
                            controller: _model.senhaCadastroTextController,
                            focusNode: _model.senhaCadastroFocusNode,
                            autofocus: false,
                            obscureText: !_model.senhaCadastroVisibility,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                '2f37o9c9' /* SENHA */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1A1A1A),
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
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF1A1A1A),
                                    fontSize: 13.0,
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
                                  color: Color(0xFFE6E6E6),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: Icon(
                                FFIcons.klockKeyhole,
                                color: Color(0xFF1A1A1A),
                                size: 18.0,
                              ),
                              suffixIcon: InkWell(
                                onTap: () => safeSetState(
                                  () => _model.senhaCadastroVisibility =
                                      !_model.senhaCadastroVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.senhaCadastroVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 16.0,
                                ),
                              ),
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
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            keyboardType: TextInputType.visiblePassword,
                            cursorColor: Color(0xFF1A1A1A),
                            validator: _model
                                .senhaCadastroTextControllerValidator
                                .asValidator(context),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                    ResetPasswordStep1Widget.routeName);
                              },
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        '7w2cc3df' /* ESQUECI MINHA SENHA */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    )
                                  ],
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
                                        fontSize: 14.0,
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
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              var _shouldSetState = false;
                              HapticFeedback.mediumImpact();
                              _model.authLogin = await MainGroup.loginCall.call(
                                email: _model.emailCadastroTextController.text,
                                password:
                                    _model.senhaCadastroTextController.text,
                              );

                              _shouldSetState = true;
                              if ((_model.authLogin?.succeeded ?? true)) {
                                GoRouter.of(context).prepareAuthEvent();
                                await authManager.signIn(
                                  authenticationToken: UserStruct.maybeFromMap(
                                          (_model.authLogin?.jsonBody ?? ''))
                                      ?.authToken,
                                  tokenExpiration:
                                      DateTime.fromMillisecondsSinceEpoch(
                                          valueOrDefault<int>(
                                    UserStruct.maybeFromMap(
                                            (_model.authLogin?.jsonBody ?? ''))
                                        ?.expirationToken,
                                    0,
                                  )),
                                  authUid: UserStruct.maybeFromMap(
                                          (_model.authLogin?.jsonBody ?? ''))
                                      ?.id,
                                  userData: UserStruct(
                                    id: UserStruct.maybeFromMap(
                                            (_model.authLogin?.jsonBody ?? ''))
                                        ?.id,
                                    firstName: UserStruct.maybeFromMap(
                                            (_model.authLogin?.jsonBody ?? ''))
                                        ?.firstName,
                                    lastName: UserStruct.maybeFromMap(
                                            (_model.authLogin?.jsonBody ?? ''))
                                        ?.lastName,
                                    email: UserStruct.maybeFromMap(
                                            (_model.authLogin?.jsonBody ?? ''))
                                        ?.email,
                                    listPermission: UserStruct.maybeFromMap(
                                            (_model.authLogin?.jsonBody ?? ''))
                                        ?.listPermission,
                                    profilePicture: UserStruct.maybeFromMap(
                                            (_model.authLogin?.jsonBody ?? ''))
                                        ?.profilePicture,
                                    address: UserStruct.maybeFromMap(
                                            (_model.authLogin?.jsonBody ?? ''))
                                        ?.address,
                                    phone: UserStruct.maybeFromMap(
                                            (_model.authLogin?.jsonBody ?? ''))
                                        ?.phone,
                                    defaultCard: UserStruct.maybeFromMap(
                                            (_model.authLogin?.jsonBody ?? ''))
                                        ?.defaultCard,
                                    document: UserStruct.maybeFromMap(
                                            (_model.authLogin?.jsonBody ?? ''))
                                        ?.document,
                                    lastOrderId: UserStruct.maybeFromMap(
                                            (_model.authLogin?.jsonBody ?? ''))
                                        ?.lastOrderId,
                                  ),
                                );
                                await MainGroup.editFcmIdCall.call(
                                  fcmId: FFAppState().tokenFCM,
                                  token: UserStruct.maybeFromMap(
                                          (_model.authLogin?.jsonBody ?? ''))
                                      ?.authToken,
                                );

                                context.pushNamedAuth(
                                    HomeWidget.routeName, context.mounted);

                                if (_shouldSetState) safeSetState(() {});
                                return;
                              } else {
                                GoRouter.of(context).prepareAuthEvent();
                                await authManager.signOut();
                                GoRouter.of(context).clearRedirectLocation();

                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      getJsonField(
                                        (_model.authLogin?.jsonBody ?? ''),
                                        r'''$.message''',
                                      ).toString(),
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).error,
                                  ),
                                );
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }

                              if (_shouldSetState) safeSetState(() {});
                            },
                            text: FFLocalizations.of(context).getText(
                              'x74v7q93' /* ENTRAR EM MINHA CONTA */,
                            ),
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 55.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFF27182),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
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
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().deleteOrderSelected();
                              FFAppState().orderSelected =
                                  aquibrazil_library_oi8i5r_data_schema
                                      .OrderStruct();

                              FFAppState().deleteCart();
                              FFAppState().cart =
                                  aquibrazil_library_oi8i5r_data_schema
                                      .CartStruct();

                              safeSetState(() {});
                              if (FFAppState().address.address != null &&
                                  FFAppState().address.address != '') {
                                context.pushNamed(HomeNoAuthWidget.routeName);

                                return;
                              } else {
                                context.pushNamed(
                                    AddressDeliveryNoAuthWidget.routeName);

                                return;
                              }
                            },
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'h6jph0mk' /* ENTRAR COMO CONVIDADO */,
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
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 13.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                      if (isiOS)
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Divider(
                                    height: 40.0,
                                    thickness: 1.0,
                                    color: Color(0xFFC9C9C9),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                '047du5bi' /* OU CONTINUE COM */,
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 11.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Divider(
                                    height: 40.0,
                                    thickness: 1.0,
                                    color: Color(0xFFC9C9C9),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  var _shouldSetState = false;
                                  _model.loginGoogle =
                                      await actions.googleLoginAction(
                                    context,
                                  );
                                  _shouldSetState = true;
                                  _model.loginGoogleOutput = await MainGroup
                                      .loginSignupSocialCall
                                      .call(
                                    email: getJsonField(
                                      _model.loginGoogle,
                                      r'''$.email''',
                                    ).toString(),
                                    authId: getJsonField(
                                      _model.loginGoogle,
                                      r'''$.uid''',
                                    ).toString(),
                                    firstName: getJsonField(
                                      _model.loginGoogle,
                                      r'''$.displayName''',
                                    ).toString(),
                                    provider: 'Google',
                                  );

                                  _shouldSetState = true;
                                  if ((_model.loginGoogleOutput?.succeeded ??
                                      true)) {
                                    GoRouter.of(context).prepareAuthEvent();
                                    await authManager.signIn(
                                      authenticationToken:
                                          UserStruct.maybeFromMap((_model
                                                      .loginGoogleOutput
                                                      ?.jsonBody ??
                                                  ''))
                                              ?.authToken,
                                      tokenExpiration:
                                          DateTime.fromMillisecondsSinceEpoch(
                                              valueOrDefault<int>(
                                        UserStruct.maybeFromMap((_model
                                                    .loginGoogleOutput
                                                    ?.jsonBody ??
                                                ''))
                                            ?.expirationToken,
                                        0,
                                      )),
                                      authUid: UserStruct.maybeFromMap((_model
                                                  .loginGoogleOutput
                                                  ?.jsonBody ??
                                              ''))
                                          ?.id,
                                      userData: UserStruct.maybeFromMap(
                                          (_model.loginGoogleOutput?.jsonBody ??
                                              '')),
                                    );
                                    await MainGroup.editFcmIdCall.call(
                                      fcmId: FFAppState().tokenFCM,
                                      token: MainGroup.loginSignupSocialCall
                                          .authToken(
                                        (_model.loginGoogleOutput?.jsonBody ??
                                            ''),
                                      ),
                                    );

                                    if (UserStruct.maybeFromMap((_model
                                                .loginGoogleOutput?.jsonBody ??
                                            ''))!
                                        .isSignup) {
                                      context.goNamedAuth(
                                          CompleteProfileNumberWidget.routeName,
                                          context.mounted);

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      context.goNamedAuth(HomeWidget.routeName,
                                          context.mounted);

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          getJsonField(
                                            (_model.loginGoogleOutput
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.message''',
                                          ).toString(),
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).error,
                                      ),
                                    );
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }

                                  if (_shouldSetState) safeSetState(() {});
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 55.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: Color(0xFFE6E6E6),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/google-original.svg',
                                          width: 25.0,
                                          height: 25.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (isiOS)
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    var _shouldSetState = false;
                                    _model.appleLogin =
                                        await actions.appleLoginAction(
                                      context,
                                    );
                                    _shouldSetState = true;
                                    _model.loginAppleOutput = await MainGroup
                                        .loginSignupSocialCall
                                        .call(
                                      email: getJsonField(
                                        _model.appleLogin,
                                        r'''$.email''',
                                      ).toString(),
                                      authId: getJsonField(
                                        _model.appleLogin,
                                        r'''$.uid''',
                                      ).toString(),
                                      firstName: getJsonField(
                                        _model.appleLogin,
                                        r'''$.displayName''',
                                      ).toString(),
                                      provider: 'Apple',
                                    );

                                    _shouldSetState = true;
                                    if ((_model.loginAppleOutput?.succeeded ??
                                        true)) {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signIn(
                                        authenticationToken:
                                            UserStruct.maybeFromMap((_model
                                                        .loginAppleOutput
                                                        ?.jsonBody ??
                                                    ''))
                                                ?.authToken,
                                        tokenExpiration:
                                            DateTime.fromMillisecondsSinceEpoch(
                                                valueOrDefault<int>(
                                          UserStruct.maybeFromMap((_model
                                                      .loginAppleOutput
                                                      ?.jsonBody ??
                                                  ''))
                                              ?.expirationToken,
                                          0,
                                        )),
                                        authUid: UserStruct.maybeFromMap((_model
                                                    .loginAppleOutput
                                                    ?.jsonBody ??
                                                ''))
                                            ?.id,
                                        userData: UserStruct.maybeFromMap(
                                            (_model.loginAppleOutput
                                                    ?.jsonBody ??
                                                '')),
                                      );
                                      await MainGroup.editFcmIdCall.call(
                                        fcmId: FFAppState().tokenFCM,
                                        token: MainGroup.loginSignupSocialCall
                                            .authToken(
                                          (_model.loginAppleOutput?.jsonBody ??
                                              ''),
                                        ),
                                      );

                                      if (UserStruct.maybeFromMap((_model
                                                  .loginAppleOutput?.jsonBody ??
                                              ''))!
                                          .isSignup) {
                                        context.goNamedAuth(
                                            CompleteProfileNumberWidget
                                                .routeName,
                                            context.mounted);
                                      } else {
                                        context.goNamedAuth(
                                            HomeWidget.routeName,
                                            context.mounted);
                                      }

                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            getJsonField(
                                              (_model.loginAppleOutput
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.message''',
                                            ).toString(),
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                        ),
                                      );
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) safeSetState(() {});
                                  },
                                  child: Container(
                                    width: 80.0,
                                    height: 55.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: Color(0xFFE6E6E6),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: SvgPicture.asset(
                                            'assets/images/apple-original.svg',
                                            width: 25.0,
                                            height: 25.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              if (false)
                                Container(
                                  width: 80.0,
                                  height: 55.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: Color(0xFFE6E6E6),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/facebook.svg',
                                          width: 25.0,
                                          height: 25.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ].divide(SizedBox(width: 12.0)),
                          ),
                        ].divide(SizedBox(height: 20.0)),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(SignupStep1Widget.routeName);
                            },
                            child: Container(
                              width: 330.11,
                              height: 35.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '4v7i92hl' /* AINDA NÃO TEM CONTA? */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'utw36ruu' /*  CRIAR AGORA */,
                                        ),
                                        style: GoogleFonts.inter(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13.0,
                                        ),
                                      )
                                    ],
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
                              ),
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 12.0)),
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation']!),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
