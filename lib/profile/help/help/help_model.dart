import '/auth/custom_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/profile/help/help_contact_email/help_contact_email_widget.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'help_widget.dart' show HelpWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class HelpModel extends FlutterFlowModel<HelpWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getAppVersionInfo] action in help widget.
  String? version;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
