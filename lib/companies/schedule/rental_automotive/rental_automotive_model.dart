import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/banner_aqui_pass_company/banner_aqui_pass_company_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'rental_automotive_widget.dart' show RentalAutomotiveWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class RentalAutomotiveModel extends FlutterFlowModel<RentalAutomotiveWidget> {
  ///  Local state fields for this page.

  SessionStruct? sessionSelected;
  void updateSessionSelectedStruct(Function(SessionStruct) updateFn) {
    updateFn(sessionSelected ??= SessionStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for bannerAquiPassCompany component.
  late BannerAquiPassCompanyModel bannerAquiPassCompanyModel;

  @override
  void initState(BuildContext context) {
    bannerAquiPassCompanyModel =
        createModel(context, () => BannerAquiPassCompanyModel());
  }

  @override
  void dispose() {
    bannerAquiPassCompanyModel.dispose();
  }
}
