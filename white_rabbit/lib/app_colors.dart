
import 'package:flutter/material.dart';

/*
* Application Colors
*/
class AppColor {
  static const Color mainColor = Color.fromRGBO(0, 197, 141, 1);
  static const Color transparent = Color.fromRGBO(0, 197, 141, .5);
  static const Color lightGreen = Colors.lightGreen;
  static const Color white = Colors.white;
  static const Color pageDelectedColor = Color.fromRGBO(0, 0, 0, 0.4);
  static const Color grey = Colors.grey;
  
 }

Color setHexaColor(String inputColor) {
  String inputColorString = inputColor.replaceAll('#', '');
  inputColorString = '0Xff' + inputColorString;
  return Color(int.parse(inputColorString));
}
