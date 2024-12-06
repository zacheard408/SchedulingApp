import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBwhVtM4ZJTb5FxP2NsDpzYhBHP-4rUzVs",
            authDomain: "scheduling-app-kimdiq.firebaseapp.com",
            projectId: "scheduling-app-kimdiq",
            storageBucket: "scheduling-app-kimdiq.appspot.com",
            messagingSenderId: "634987094387",
            appId: "1:634987094387:web:1527f20226dbf4b6a6e506"));
  } else {
    await Firebase.initializeApp();
  }
}
