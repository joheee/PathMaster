import 'package:flutter/material.dart';
import 'package:path_master/component/custom_button.dart';
import 'package:path_master/component/custom_profile_button.dart';
import 'package:path_master/component/custom_profile_info.dart';
import 'package:path_master/config/variable.dart';
import 'package:path_master/layout/default_layout.dart';
import 'package:path_master/layout/inner_layout.dart';
import 'package:path_master/page/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      isBottomBar: true,
      children: [

        SizedBox(height: Variable.defaultTopBarPadding),
        
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

        InnerLayout(
          cross: CrossAxisAlignment.start,
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

        InnerLayout(
          cross: CrossAxisAlignment.start,
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
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage())
            );
          }, 
          width: 240)
      ]
    );
  }
}
