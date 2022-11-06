import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:winestock/widget/test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:winestock/widget/wine_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCVcG-TDOiuFu4SAeupqQW1GLETdP4J5_A",
            authDomain: "wine-stock-dd933.firebaseapp.com",
            projectId: "wine-stock-dd933",
            storageBucket: "wine-stock-dd933.appspot.com",
            messagingSenderId: "1077339055675",
            appId: "1:1077339055675:web:a1798e538c2b3a60a59e1e"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wine Stock',
      theme: ThemeData.dark(),
      home: const WinePage(),
    );
  }
}
