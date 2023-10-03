import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';
import 'package:path_master/layout/default_layout.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      isBottomBar: true,
      children: [
        
        SizedBox(height: Variable.defaultTopBarPadding),
        
        Text(
          "Connect to Head Unit",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Variable.whiteColor
          ),
        ),

        
      ] 
    );
  }
}