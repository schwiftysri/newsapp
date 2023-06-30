import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCrNO8pjvEVwbkEt90AqaBQaV4IqOcOlzU",
            authDomain: "newsapp-201b4.firebaseapp.com",
            projectId: "newsapp-201b4",
            storageBucket: "newsapp-201b4.appspot.com",
            messagingSenderId: "622327117516",
            appId: "1:622327117516:web:b239ca76fd74ba5d0a3469",
            measurementId: "G-DFJLV5VJRP"));
  } else {
    await Firebase.initializeApp();
  }
}
