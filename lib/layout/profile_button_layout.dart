import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';

class ProfileButtonLayout extends StatelessWidget {
  final List<Widget> children;
  const ProfileButtonLayout({
    super.key,
    required this.children
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Variable.defaultPaddingSet,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children
      ),
    );
  }
}