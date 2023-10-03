import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';
import 'package:path_master/page/login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// Delayed navigation to the login screen after 2 seconds
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
