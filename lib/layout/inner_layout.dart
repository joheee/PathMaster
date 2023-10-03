import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';

class InnerLayout extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment cross;
  const InnerLayout({
    super.key,
    required this.children,
    required this.cross
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Variable.defaultPaddingSet,
      child: Column(
        crossAxisAlignment: cross,
        children: children
      ),
    );
  }
}