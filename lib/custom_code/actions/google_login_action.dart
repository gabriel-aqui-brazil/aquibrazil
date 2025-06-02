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

Future<dynamic> googleLoginAction(BuildContext context) async {
  try {
    final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email', 'profile'],
    );

    final GoogleSignInAccount? account = await _googleSignIn.signIn();

    if (account == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login cancelado pelo usuário')),
      );
      return {'error': 'Login cancelado pelo usuário'};
    }

    final GoogleSignInAuthentication auth = await account.authentication;

    if (auth.idToken == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('ID Token não encontrado')),
      );
      return {'error': 'ID Token não encontrado'};
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Login com Google sucesso: ${account.email}')),
    );

    return {
      'uid': auth.idToken,
      'idToken': auth.idToken,
      'accessToken': auth.accessToken,
      'email': account.email,
      'displayName': account.displayName,
      'photoUrl': account.photoUrl,
    };
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Erro no login com Google: $e')),
    );
    return {'error': 'Erro no login: $e'};
  }
}
