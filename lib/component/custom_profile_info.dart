
import 'package:flutter/material.dart';
import 'package:path_master/config/variable.dart';

class CustomProfileInfo extends StatelessWidget {
  
  final String image, username, email;
  
  const CustomProfileInfo({
    super.key,
    required this.image,
    required this.username,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Variable.defaultPaddingSet,
      child: Card(
        color: Variable.backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Variable.whiteShadeColor,
            width: 1.5 
          ),
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(
                image,
              ),
              const SizedBox(
                width: 8.0,
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Variable.whiteColor
                    ),
                  ),
                  Text(
                    email,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      color: Variable.whiteColor
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

