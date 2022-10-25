import 'package:flutter/material.dart';
import 'package:winestock/widget/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const LoginPage(),
    ));
  }
}
