import '/auth/custom_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'security_model.dart';
export 'security_model.dart';

class SecurityWidget extends StatefulWidget {
  const SecurityWidget({super.key});

  static String routeName = 'security';
  static String routePath = 'security';

  @override
  State<SecurityWidget> createState() => _SecurityWidgetState();
}

class _SecurityWidgetState extends State<SecurityWidget> {
  late SecurityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecurityModel());

    _model.switchValue1 = currentUserData!.biometric;
    _model.switchValue2 = currentUserData!.biometric;
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
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xFFF7F7F7),
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
                context.pop();
              },
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                'q3ta7juz' /* SEGURANÇA */,
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
            child: Container(
              width: double.infinity,
              height: 400.0,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (isiOS)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 0.7,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SvgPicture.asset(
                                      'assets/images/face-id.svg',
                                      width: 25.0,
                                      height: 25.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'g1dcr7qh' /* USAR FACE ID PARA LOGAR */,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '3ws9c7ma' /* Quando habilitado, o Face ID s... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.rubik(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 3.0)),
                                  ),
                                ].divide(SizedBox(width: 4.0)),
                              ),
                              Switch.adaptive(
                                value: _model.switchValue1!,
                                onChanged: (newValue) async {
                                  safeSetState(
                                      () => _model.switchValue1 = newValue!);
                                  if (newValue!) {
                                    authManager.updateAuthUserData(
                                      authenticationToken:
                                          currentAuthenticationToken,
                                      tokenExpiration:
                                          currentAuthTokenExpiration,
                                      authUid: currentUserUid,
                                      userData: UserStruct(
                                        id: currentUserData?.id,
                                        firstName: currentUserData?.firstName,
                                        lastName: currentUserData?.lastName,
                                        email: currentUserData?.email,
                                        biometric: true,
                                        profilePicture:
                                            currentUserData?.profilePicture,
                                        location: currentUserData?.location,
                                        address: currentUserData?.address,
                                        cashbackEarned:
                                            currentUserData?.cashbackEarned,
                                        phone: currentUserData?.phone,
                                        timezone: currentUserData?.timezone,
                                        defaultCard:
                                            currentUserData?.defaultCard,
                                        document: currentUserData?.document,
                                      ),
                                    );
                                  } else {
                                    authManager.updateAuthUserData(
                                      authenticationToken:
                                          currentAuthenticationToken,
                                      tokenExpiration:
                                          currentAuthTokenExpiration,
                                      authUid: currentUserUid,
                                      userData: UserStruct(
                                        id: currentUserData?.id,
                                        firstName: currentUserData?.firstName,
                                        lastName: currentUserData?.lastName,
                                        email: currentUserData?.email,
                                        biometric: false,
                                        profilePicture:
                                            currentUserData?.profilePicture,
                                        location: currentUserData?.location,
                                        address: currentUserData?.address,
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
                                },
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                inactiveTrackColor:
                                    FlutterFlowTheme.of(context).alternate,
                                inactiveThumbColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  if (isAndroid)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 24.0),
                      child: Container(
                        width: double.infinity,
                        height: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 0.7,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    FFIcons.kfingerCricle,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 30.0,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'vjle2gc5' /* USAR DIGITAL PARA LOGAR */,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '9uq4sbu4' /* Quando habilitado, a Digital s... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.rubik(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 3.0)),
                                  ),
                                ].divide(SizedBox(width: 4.0)),
                              ),
                              Switch.adaptive(
                                value: _model.switchValue2!,
                                onChanged: (newValue) async {
                                  safeSetState(
                                      () => _model.switchValue2 = newValue!);
                                  if (newValue!) {
                                    authManager.updateAuthUserData(
                                      authenticationToken:
                                          currentAuthenticationToken,
                                      tokenExpiration:
                                          currentAuthTokenExpiration,
                                      authUid: currentUserUid,
                                      userData: UserStruct(
                                        id: currentUserData?.id,
                                        firstName: currentUserData?.firstName,
                                        lastName: currentUserData?.lastName,
                                        email: currentUserData?.email,
                                        biometric: true,
                                        profilePicture:
                                            currentUserData?.profilePicture,
                                        location: currentUserData?.location,
                                        address: currentUserData?.address,
                                        cashbackEarned:
                                            currentUserData?.cashbackEarned,
                                        phone: currentUserData?.phone,
                                        timezone: currentUserData?.timezone,
                                        defaultCard:
                                            currentUserData?.defaultCard,
                                        document: currentUserData?.document,
                                      ),
                                    );
                                  } else {
                                    authManager.updateAuthUserData(
                                      authenticationToken:
                                          currentAuthenticationToken,
                                      tokenExpiration:
                                          currentAuthTokenExpiration,
                                      authUid: currentUserUid,
                                      userData: UserStruct(
                                        id: currentUserData?.id,
                                        firstName: currentUserData?.firstName,
                                        lastName: currentUserData?.lastName,
                                        email: currentUserData?.email,
                                        biometric: false,
                                        profilePicture:
                                            currentUserData?.profilePicture,
                                        location: currentUserData?.location,
                                        address: currentUserData?.address,
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
                                },
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                activeTrackColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                inactiveTrackColor:
                                    FlutterFlowTheme.of(context).alternate,
                                inactiveThumbColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                            ],
                          ),
                        ),
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
