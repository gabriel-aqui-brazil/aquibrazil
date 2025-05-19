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

import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> googleLoginAction() async {
  try {
    final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email', 'profile'],
    );

    final GoogleSignInAccount? account = await _googleSignIn.signIn();
    if (account == null) {
      return {'error': 'Login cancelado pelo usuário'};
    }

    final GoogleSignInAuthentication auth = await account.authentication;

    final idToken = auth.idToken;
    if (idToken == null) {
      return {'error': 'ID Token não encontrado'};
    }

    // 🔐 Sua Firebase Web API Key aqui
    const firebaseApiKey = 'AIzaSyANwmYHretWP_DP3Shqm5s9GdRIo_c6IXQ';

    // 🔥 Chamada para obter UID do Firebase via REST
    final response = await http.post(
      Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithIdp?key=$firebaseApiKey'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'postBody': 'id_token=$idToken&providerId=google.com',
        'requestUri': 'http://localhost',
        'returnIdpCredential': true,
        'returnSecureToken': true,
      }),
    );

    if (response.statusCode != 200) {
      print('Erro Firebase REST: ${response.body}');
      return {'error': 'Erro ao validar com Firebase'};
    }

    final firebaseData = json.decode(response.body);
    final firebaseUid = firebaseData['localId'];

    return {
      'uid': firebaseUid,
      'idToken': idToken,
      'accessToken': auth.accessToken,
      'email': account.email,
      'displayName': account.displayName,
      'photoUrl': account.photoUrl,
    };
  } catch (e) {
    print('Erro no login com Google: $e');
    return {'error': 'Erro no login'};
  }
}
