
import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';

class CustomTextIcon extends StatelessWidget {
  final Function() onTap;
  final Icon icon;
  final String text;
  const CustomTextIcon({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: Variable.defaultWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 8.0), 
            Text(
              text,
              style: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
