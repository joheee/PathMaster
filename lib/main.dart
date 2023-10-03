import 'package:flutter/material.dart';
import 'package:path_master/page/scan.dart';
import 'package:path_master/page/splash_screen.dart';
import 'package:path_master/service/locator.dart';
import 'package:path_master/service/mainscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// Delayed navigation to the login screen after 2 seconds
  @override
  Widget build(BuildContext context) {
    return const MainScreen();
    // return const SplashScreen();
    return const ScanPage();
  }
}
