import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';

class LoginLayout extends StatelessWidget {

  final List<Widget> children;
  const LoginLayout({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Variable.backgroundColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children
            ),
          ),
        ),
      ),
    );
  }
}