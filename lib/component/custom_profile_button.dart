import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';

class CustomProfileButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final Function() onPressed;
  const CustomProfileButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Variable.whiteShadeColor, 
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon,
          const SizedBox(width: 8.0), 
          Text(
            text,
            style: TextStyle(
              color: Variable.whiteColor, 
            ),
          ),
        ],
      ),
    );
  }
}