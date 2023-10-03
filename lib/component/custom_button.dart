import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Function() onPressed;
  final double width;
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.onPressed,
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, 40),
        backgroundColor: backgroundColor,
        foregroundColor: Variable.blackColor,
        shape: RoundedRectangleBorder(
          borderRadius: Variable.defaultBorderRadius
        )
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}