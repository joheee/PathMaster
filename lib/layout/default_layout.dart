import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';

class DefaultLayout extends StatelessWidget {

  final List<Widget> children;
  const DefaultLayout({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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