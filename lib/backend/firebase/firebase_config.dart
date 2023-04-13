import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC5If8PEACqOiS9Snqif0VzI04c-z-fcxE",
            authDomain: "viajaya-262af.firebaseapp.com",
            projectId: "viajaya-262af",
            storageBucket: "viajaya-262af.appspot.com",
            messagingSenderId: "323005261843",
            appId: "1:323005261843:web:d4b24f313d536ab5aef7e6"));
  } else {
    await Firebase.initializeApp();
  }
}
