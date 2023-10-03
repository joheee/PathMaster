import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Variable.backgroundColor,
        body: Center(
          child: Image.asset(
            'asset/logo-grid.png',
            width: 220,
            height: 150,
          )
        ),
      ),
    );
  }
}