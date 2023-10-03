import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';
import 'package:path_master/layout/inner_layout.dart';

class CustomInputForm extends StatelessWidget {
  final String outerText, hintText;
  final TextEditingController controller;
  const CustomInputForm({
    super.key,
    required this.outerText,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return InnerLayout(
      cross: CrossAxisAlignment.start,
      children: [
        Text(
          outerText,
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w400,
            color: Variable.whiteColor
          ),
        ),
        const SizedBox(height: 5.0),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Variable.whiteColor,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            contentPadding: const EdgeInsets.all(15.0), // Adjust the vertical padding to set the height
          ),
        ),
      ]
    );
  }
}