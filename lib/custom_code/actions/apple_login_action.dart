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

import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> appleLoginAction() async {
  try {
    if (!Platform.isIOS) {
      return {'error': "Erro: Login com Apple disponível apenas no iOS"};
    }

    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    final fullName = credential.givenName != null
        ? '${credential.givenName} ${credential.familyName}'
        : null;

    final idToken = credential.identityToken;
    if (idToken == null) {
      return {'error': 'ID Token da Apple não encontrado'};
    }

    // 🔐 Sua Firebase Web API Key aqui
    const firebaseApiKey = 'AIzaSyANwmYHretWP_DP3Shqm5s9GdRIo_c6IXQ';

    final response = await http.post(
      Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithIdp?key=$firebaseApiKey'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'postBody': 'id_token=$idToken&providerId=apple.com',
        'requestUri': 'http://localhost',
        'returnIdpCredential': true,
        'returnSecureToken': true,
      }),
    );

    if (response.statusCode != 200) {
      print('Erro Firebase REST (Apple): ${response.body}');
      return {'error': 'Erro ao validar com Firebase'};
    }

    final firebaseData = json.decode(response.body);
    final firebaseUid = firebaseData['localId'];

    return {
      'uid': firebaseUid,
      'idToken': idToken,
      'email': credential.email,
      'displayName': fullName,
    };
  } catch (e) {
    print('Erro no login com Apple: $e');
    return {'error': "Erro no login"};
  }
}
