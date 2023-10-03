import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';
import 'package:path_master/page/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

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