import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';

class LoginCardLayout extends StatelessWidget {
  final List<Widget> children;
  const LoginCardLayout({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Variable.greenColor,
          width: 6.0
        ),
        borderRadius: Variable.defaultBorderRadius
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children
        ),
      ),
    );
  }
}