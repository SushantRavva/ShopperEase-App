import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD6c0IDWk55LR49q8mdQg9sufXrC7__PpY",
            authDomain: "shopproject-1caee.firebaseapp.com",
            projectId: "shopproject-1caee",
            storageBucket: "shopproject-1caee.appspot.com",
            messagingSenderId: "451845369537",
            appId: "1:451845369537:web:a38bce295470b666bb2e40"));
  } else {
    await Firebase.initializeApp();
  }
}
