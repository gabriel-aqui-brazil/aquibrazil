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

import 'package:intl/intl.dart';

Future<String> getDurationDelivery(String minutes) async {
  // Usa o horário local do dispositivo
  final now = DateTime.now();
  final addedMinutes = int.tryParse(minutes) ?? 0;
  final future = now.add(Duration(minutes: addedMinutes));

  if (now.year == future.year &&
      now.month == future.month &&
      now.day == future.day) {
    final diff = future.difference(now);
    final totalMinutes = diff.inMinutes;
    final hours = totalMinutes ~/ 60;
    final mins = totalMinutes % 60;

    String horasStr = "";
    String minutosStr = "";

    if (hours > 0) {
      horasStr = hours == 1 ? "1 Hora" : "$hours Horas";
    }
    if (mins > 0) {
      minutosStr = "$mins min";
    }

    String diffStr = "";
    if (hours > 0 && mins > 0) {
      diffStr = "$horasStr e $minutosStr";
    } else if (hours > 0) {
      diffStr = horasStr;
    } else {
      diffStr = minutosStr;
    }

    return "Hoje, as $diffStr";
  } else {
    final startOfToday = DateTime(now.year, now.month, now.day);
    final startOfTomorrow = startOfToday.add(Duration(days: 1));

    if (future.year == startOfTomorrow.year &&
        future.month == startOfTomorrow.month &&
        future.day == startOfTomorrow.day) {
      final timeFormat = DateFormat("h:mma");
      String timeStr = timeFormat.format(future).toLowerCase();
      return "Amanhã, as $timeStr";
    } else {
      final dateFormat = DateFormat("MM/dd");
      final timeFormat = DateFormat("h:mma");
      String dateStr = dateFormat.format(future);
      String timeStr = timeFormat.format(future).toLowerCase();
      return "$dateStr as $timeStr";
    }
  }
}
