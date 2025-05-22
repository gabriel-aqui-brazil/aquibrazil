// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import "package:aquibrazil_library_oi8i5r/backend/schema/structs/index.dart"
    as aquibrazil_library_oi8i5r_data_schema;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_messaging/firebase_messaging.dart';

Future<String?> getFCMToken() async {
  NotificationSettings settings =
      await FirebaseMessaging.instance.getNotificationSettings();

  if (settings.authorizationStatus != AuthorizationStatus.authorized) {
    print('Permissão para notificações não concedida.');
    return null;
  }

  String? fcmToken = await FirebaseMessaging.instance.getToken();

  if (fcmToken != null) {
    print('Token FCM obtido: $fcmToken');
  } else {
    print('Não foi possível obter o token FCM.');
  }

  return fcmToken;
}
