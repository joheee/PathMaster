import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';

class ProfileLayout extends StatelessWidget {
  final List<Widget> children;
  const ProfileLayout({
    super.key, 
    required this.children
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Variable.backgroundColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: children
              ),
          ),
        ),
      ),
    );
  }
}