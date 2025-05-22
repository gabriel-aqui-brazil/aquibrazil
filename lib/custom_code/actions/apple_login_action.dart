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

Future<dynamic> appleLoginAction(BuildContext context) async {
  try {
    if (!Platform.isIOS) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login com Apple disponível apenas no iOS')),
      );
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
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('ID Token da Apple não encontrado')),
      );
      return {'error': 'ID Token da Apple não encontrado'};
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Login com Apple sucesso: ${credential.email}')),
    );

    return {
      'uid': idToken,
      'idToken': idToken,
      'email': credential.email,
      'displayName': fullName,
    };
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Erro no login com Apple: $e')),
    );
    return {'error': "Erro no login: $e"};
  }
}
