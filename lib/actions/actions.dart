import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:convert';
import "package:aquibrazil_library_oi8i5r/backend/schema/enums/enums.dart"
    as aquibrazil_library_oi8i5r_enums;
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:ff_commons/api_requests/api_manager.dart';
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<bool> checkIsUserDataPopulate(BuildContext context) async {
  if (loggedIn) {
    return true;
  }

  return false;
}

Future<bool?> insertUserDocument(
  BuildContext context, {
  required String? document,
}) async {
  ApiCallResponse? apiInsertDocumentResponse;

  if (currentUserData?.document != null && currentUserData?.document != '') {
    return true;
  }

  apiInsertDocumentResponse = await MainGroup.updateDocumentProfileCall.call(
    document: document,
    token: currentAuthenticationToken,
  );

  if ((apiInsertDocumentResponse?.succeeded ?? true)) {
    return true;
  }

  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        getJsonField(
          (apiInsertDocumentResponse?.jsonBody ?? ''),
          r'''$.message''',
        ).toString(),
        style: TextStyle(
          color: FlutterFlowTheme.of(context).primaryText,
        ),
      ),
      duration: Duration(milliseconds: 4000),
      backgroundColor: FlutterFlowTheme.of(context).error,
    ),
  );
  return false;
}

Future errorAlertSnacbar(
  BuildContext context, {
  required String? textPt,
  required String? textEs,
  required String? textEn,
}) async {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        FFLocalizations.of(context).getVariableText(
          ptText: textPt,
          enText: textEn,
          esText: textEn,
        ),
        style: TextStyle(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
      ),
      duration: Duration(milliseconds: 4000),
      backgroundColor: FlutterFlowTheme.of(context).error,
    ),
  );
}

Future verifyAppVersion(BuildContext context) async {
  ApiCallResponse? appVersion;

  appVersion = await MainGroup.gETAppVersionAvaliableCall.call(
    token: currentAuthenticationToken,
  );

  if ((appVersion?.succeeded ?? true)) {
    FFAppState().actualVersion = MainGroup.gETAppVersionAvaliableCall
        .actualVersion(
          (appVersion?.jsonBody ?? ''),
        )
        .toString();
    FFAppState().update(() {});
    return;
  } else {
    return;
  }
}

Future<bool> verifyHomeCache(BuildContext context) async {
  bool? isOverride;

  if (FFAppState().lastCacheTime == null) {
    FFAppState().lastCacheTime = getCurrentTimestamp;
  }
  isOverride = await actions.isOverrideCacheAction(
    FFAppState().lastCacheTime!,
  );
  if (isOverride!) {
    FFAppState().lastCacheTime = getCurrentTimestamp;
    FFAppState().isCacheOverride = true;
    FFAppState().update(() {});
    FFAppState().clearCacheHomePageCacheKey(valueOrDefault<String>(
      currentUserData?.id,
      '-',
    ));
    await Future.delayed(
      Duration(
        milliseconds: 1000,
      ),
    );
    FFAppState().isCacheOverride = false;
    return true;
  } else {
    return false;
  }
}

Future orderHistory(
  BuildContext context, {
  String? type,
}) async {
  ApiCallResponse? apiResult4xv2;

  apiResult4xv2 = await MainGroup.queryOrderHistoryCall.call(
    token: currentAuthenticationToken,
    orderType: type,
  );

  FFAppState().historyOrder =
      ((apiResult4xv2?.jsonBody ?? '')
                  .toList()
                  .map<aquibrazil_library_oi8i5r_data_schema.OrderStruct?>(
                      aquibrazil_library_oi8i5r_data_schema
                          .OrderStruct.maybeFromMap)
                  .toList()
              as Iterable<aquibrazil_library_oi8i5r_data_schema.OrderStruct?>)
          .withoutNulls
          .toList()
          .cast<aquibrazil_library_oi8i5r_data_schema.OrderStruct>();
  FFAppState().update(() {});
}

Future cartClear(BuildContext context) async {
  FFAppState().deleteCart();
  FFAppState().cart = aquibrazil_library_oi8i5r_data_schema.CartStruct();

  FFAppState().preferredTimeDelivery = null;
  FFAppState().update(() {});
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'SUA SACOLA ESTÁ VAZIA',
        style: FlutterFlowTheme.of(context).bodySmall.override(
              font: GoogleFonts.rubik(
                fontWeight: FontWeight.w500,
                fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
              ),
              letterSpacing: 0.0,
              fontWeight: FontWeight.w500,
              fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
            ),
      ),
      duration: Duration(milliseconds: 3000),
      backgroundColor: FlutterFlowTheme.of(context).secondary,
    ),
  );

  context.goNamed(
    HomeWidget.routeName,
    extra: <String, dynamic>{
      kTransitionInfoKey: TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 300),
      ),
    },
  );
}
