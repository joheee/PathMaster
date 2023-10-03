import 'package:flutter/material.dart';
import 'package:path_master/component/custom_button.dart';
import 'package:path_master/component/custom_input_field.dart';
import 'package:path_master/component/custom_text_icon.dart';
import 'package:path_master/config/variable.dart';
import 'package:path_master/layout/login_card_layout.dart';
import 'package:path_master/layout/default_layout.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return DefaultLayout(
      isBottomBar: false,
      children: [
        Image.asset(
          'asset/logo-flex.png',
          width: 220,
          height: 150,
        ),
        LoginCardLayout(
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const Text(
              "Please login to you account",
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w400
              ),
            ),
            
            const SizedBox(height:40.0),

            CustomInputField(
              hintText: "Username", 
              labelText: "Username", 
              obscureText: false, 
              prefixIcon: Icon(
                Icons.person,
                color: Variable.greenColor,
              ), 
              controller: usernameController
            ),

            const SizedBox(height:15.0),

            CustomInputField(
              hintText: "Password", 
              labelText: "Password", 
              obscureText: true, 
              prefixIcon: Icon(
                Icons.lock,
                color: Variable.greenColor,
              ), 
              controller: passwordController
            ),

            const SizedBox(height:15.0),
            
            CustomTextIcon(
              onTap: () {},
              icon: Icon(
                Icons.info,
                size: 20.0,
                color: Variable.greenColor,
              ),
              text:'Forgot Password?'
            ),

            const SizedBox(height:15.0),
            
            CustomButton(
              backgroundColor: Variable.greenColor,
              width: Variable.defaultWidth,
              text: 'Sign In',
              onPressed: () {},
            ),
          ]
        ),
      ]
    );
  }
}

