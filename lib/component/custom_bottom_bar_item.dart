import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';

class CustomBottomBarItem extends StatelessWidget {
  final int index;
  final IconData iconData;
  final Function() onTap;
  const CustomBottomBarItem({
    super.key,
    required this.index,
    required this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 56, // Adjust the height as needed
        width: MediaQuery.of(context).size.width / 3, // Divide by the number of items
        child: Icon(
          iconData,
          color: Variable.greenColor,
          size: 24.0,
        ),
      ),
    );
  }
}