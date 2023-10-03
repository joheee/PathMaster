import 'package:flutter/material.dart';
import 'package:path_master/page/form.dart';
import 'package:path_master/page/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}
