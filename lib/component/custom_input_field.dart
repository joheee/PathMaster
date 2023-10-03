import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool obscureText;
  final Icon prefixIcon;
  final TextEditingController controller;

  const CustomInputField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.obscureText,
    required this.prefixIcon,
    required this.controller
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Variable.defaultWidth,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: Variable.defaultBorderRadius
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Variable.greenColor), 
            borderRadius: Variable.defaultBorderRadius
          ),
          prefixIcon: prefixIcon
        ),
      ),
    );
  }
}