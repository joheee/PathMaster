import 'package:flutter/material.dart';

class Variable {
  static Color backgroundColor = const Color(0xff1C2129); 
  static Color greenColor = const Color(0xff80F17E);
  static Color redColor = const Color(0xffFF0000);
  static Color whiteColor = const Color(0xffFFFFFF);
  static Color whiteShadeColor = const Color(0xffFFFFFF).withOpacity(0.15);
  static Color blackColor = const Color(0xff000000);
  static BorderRadius defaultBorderRadius = BorderRadius.circular(30.0);
  static double defaultWidth = 220;
  static double defaultPadding = 30.0;
  static EdgeInsets defaultPaddingSet = EdgeInsets.fromLTRB(Variable.defaultPadding, Variable.defaultPadding/5, Variable.defaultPadding, Variable.defaultPadding/5);
}