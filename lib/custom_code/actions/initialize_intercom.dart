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

import 'package:intercom_flutter/intercom_flutter.dart';

Future<void> initializeIntercom() async {
  await Intercom.instance.initialize(
    'gvxfvslc',
    androidApiKey: 'android_sdk-3ef7aeed8817eb2fde306c3b9c0eb7956578e899',
    iosApiKey: 'ios_sdk-7b5933d3c25ea312649e8ee56c0a6772d979baad',
  );
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
