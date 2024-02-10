import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB_DByrPs-_PhuXtQOW-Ay7kHdfRHeKid8",
            authDomain: "vahan2-4erpsr.firebaseapp.com",
            projectId: "vahan2-4erpsr",
            storageBucket: "vahan2-4erpsr.appspot.com",
            messagingSenderId: "100479443585",
            appId: "1:100479443585:web:e7f50268bcace69d20a380"));
  } else {
    await Firebase.initializeApp();
  }
}
