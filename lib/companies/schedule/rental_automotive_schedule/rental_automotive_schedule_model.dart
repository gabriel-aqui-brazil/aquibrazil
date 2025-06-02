import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/companies/schedule/calendar/calendar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'rental_automotive_schedule_widget.dart'
    show RentalAutomotiveScheduleWidget;
import 'package:ff_commons/api_requests/api_streaming.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class RentalAutomotiveScheduleModel
    extends FlutterFlowModel<RentalAutomotiveScheduleWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Backend Call - API (Remove favorite company)] action in ConditionalBuilder widget.
  ApiCallResponse? apiResulteqa;
  // Stores action output result for [Backend Call - API (Insert favorite company)] action in ConditionalBuilder widget.
  ApiCallResponse? apiResult8ey;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for Calendar component.
  late CalendarModel calendarModel;

  @override
  void initState(BuildContext context) {
    calendarModel = createModel(context, () => CalendarModel());
  }

  @override
  void dispose() {
    calendarModel.dispose();
  }
}
