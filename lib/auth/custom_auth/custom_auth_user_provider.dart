import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class AquiBrazilAuthUser {
  AquiBrazilAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<AquiBrazilAuthUser> aquiBrazilAuthUserSubject =
    BehaviorSubject.seeded(AquiBrazilAuthUser(loggedIn: false));
Stream<AquiBrazilAuthUser> aquiBrazilAuthUserStream() =>
    aquiBrazilAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
