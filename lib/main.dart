import 'package:flutter/material.dart';
import 'package:path_master/page/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// Delayed navigation to the login screen after 2 seconds
  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
