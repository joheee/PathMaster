import 'package:animated_splash_screen/animated_splash_screen.dart';
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
      home: AnimatedSplashScreen(
          duration: 2000,
          splash: 'asset/logo-grid.png',
          nextScreen: const LoginPage(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Variable.backgroundColor
        ),
    );
  }
}