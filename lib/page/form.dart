import 'package:flutter/material.dart';
import 'package:path_master/component/custom_button.dart';
import 'package:path_master/component/custom_input_form.dart';
import 'package:path_master/config/variable.dart';
import 'package:path_master/layout/default_layout.dart';
import 'package:path_master/layout/inner_layout.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController dateController = TextEditingController();

    return DefaultLayout(
      children: [
        
        SizedBox(height: Variable.defaultTopBarPadding),
        
        Text(
          "Form Request",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Variable.whiteColor
          ),
        ),

        InnerLayout(
          cross: CrossAxisAlignment.center,
          children: [

            CustomInputForm(
              controller: dateController,
              hintText: "DD/MM/YYYY",
              outerText: "Date",
            ),
            CustomInputForm(
              controller: dateController,
              hintText: "Ex: digital",
              outerText: "Report Type",
            ),     
            CustomInputForm(
              controller: dateController,
              hintText: "Ex: Gempa bumi, Longsor",
              outerText: "What kind of resources do you have?",
            ),            
            CustomInputForm(
              controller: dateController,
              hintText: "Ex: https://google.com/longsor",
              outerText: "Resource link",
            ),
            const SizedBox(height: 20.0,),
            CustomButton(
              backgroundColor: Variable.greenColor,
              width: Variable.defaultWidth,
              text: 'Submit',
              onPressed: () {},
            ),
          ]
        )
      ]
    );
  }
}

