import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAPpE_0MKxpC6Ybr8XIqh3ANS4a_98h-R8",
            authDomain: "imkkelompok5-81f42.firebaseapp.com",
            projectId: "imkkelompok5-81f42",
            storageBucket: "imkkelompok5-81f42.appspot.com",
            messagingSenderId: "304617441744",
            appId: "1:304617441744:web:2e77e99e3c8a97e7a0d1d5",
            measurementId: "G-1DX49C2G5P"));
  } else {
    await Firebase.initializeApp();
  }
}
