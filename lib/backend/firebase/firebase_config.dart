import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyANwmYHretWP_DP3Shqm5s9GdRIo_c6IXQ",
            authDomain: "aquibrazil-40ba0.firebaseapp.com",
            projectId: "aquibrazil-40ba0",
            storageBucket: "aquibrazil-40ba0.appspot.com",
            messagingSenderId: "60551182546",
            appId: "1:60551182546:web:30e35817f87482b93ad50b"));
  } else {
    await Firebase.initializeApp();
  }
}
