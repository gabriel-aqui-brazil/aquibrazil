// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import "package:aquibrazil_library_oi8i5r/backend/schema/enums/enums.dart"
    as aquibrazil_library_oi8i5r_enums;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:add_2_calendar/add_2_calendar.dart';

Future addToCalendar(
  String title,
  String description,
  DateTime startTime,
  DateTime endTime,
) async {
  final event = Event(
    title: title,
    description: description,
    location: '', // Pode preencher se quiser
    startDate: startTime,
    endDate: endTime,
    allDay: false,
  );

  await Add2Calendar.addEvent2Cal(event);
}
