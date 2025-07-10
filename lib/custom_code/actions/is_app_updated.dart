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

bool isAppUpdated(String currentAppVersion, String availableAppVersion) {
  //Null check
  if (currentAppVersion.isEmpty || availableAppVersion.isEmpty) {
    return true;
  }

  // Divide a versão nos pontos
  List<String> current = currentAppVersion.split('.');
  List<String> available = availableAppVersion.split('.');

  // Concatena cada parte como uma string e transforma em um número inteiro
  String currentAsString = current.map((part) => part.padLeft(3, '0')).join('');
  String availableAsString =
      available.map((part) => part.padLeft(3, '0')).join('');

  if (int.parse(currentAsString) < int.parse(availableAsString)) {
    return false;
  }

  return true;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
