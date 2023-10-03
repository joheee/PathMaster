import 'package:flutter/material.dart';
import 'package:path_master/component/custom_button.dart';
import 'package:path_master/component/custom_profile_button.dart';
import 'package:path_master/component/custom_profile_info.dart';
import 'package:path_master/config/variable.dart';
import 'package:path_master/layout/profile_button_layout.dart';
import 'package:path_master/layout/profile_layout.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileLayout(
      children: [
        Text(
          "My Profile",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Variable.whiteColor
          ),
        ),

        CustomProfileInfo(
          image: 'asset/profile.png',
          username: 'Kevin',
          email: 'kegin@gmail.com',
          onTap: () {},
        ),

        ProfileButtonLayout(
          children: [
            Divider(
              color: Variable.whiteShadeColor, // Line color
              thickness: 1.5, // Line thickness
            ),
            const SizedBox(height: 15.0),
            Text(
              "Setting and Preferences",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                color: Variable.whiteColor
              ),
            ),
            const SizedBox(height: 15.0),
            CustomProfileButton(
              onPressed: () {},
              icon: Icon(
                Icons.access_alarm, 
                color: Variable.greenColor,
              ),
              text: 'Notifications',
            ),
            CustomProfileButton(
              onPressed: () {},
              icon: Icon(
                Icons.language, 
                color: Variable.greenColor,
              ),
              text: 'Language',
            ),
            CustomProfileButton(
              onPressed: () {},
              icon: Icon(
                Icons.security, 
                color: Variable.greenColor,
              ),
              text: 'Security',
            ),
            
          ],
        ),
        ProfileButtonLayout(
          children: [
            Divider(
              color: Variable.whiteShadeColor, // Line color
              thickness: 1.5, // Line thickness
            ),
            const SizedBox(height: 15.0),
            Text(
              "Support",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                color: Variable.whiteColor
              ),
            ),
            const SizedBox(height: 15.0),
            CustomProfileButton(
              onPressed: () {},
              icon: Icon(
                Icons.help_center, 
                color: Variable.greenColor,
              ),
              text: 'Help Center',
            ),
            CustomProfileButton(
              onPressed: () {},
              icon: Icon(
                Icons.bug_report, 
                color: Variable.greenColor,
              ),
              text: 'Report a bug',
            ),
          ],
        ),
        CustomButton(
          backgroundColor: Variable.redColor, 
          text: 'Log Out', 
          onPressed: () {}, 
          width: 240)
      ]
    );
  }
}
