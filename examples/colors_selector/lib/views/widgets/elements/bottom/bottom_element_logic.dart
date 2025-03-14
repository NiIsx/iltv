import 'package:flutter/material.dart';
import 'package:iltv/iltv.dart';

class BottomElementLogic {
  static const defaultColor = Colors.blue;
  var color = IltvLogicValue<Color>(defaultColor);
  
  void Function()? onChangeTopElementColorButtonPressed;
  void Function()? onChangeMiddleElementColorButtonPressed;
  void Function()? onChangeBottomElementColorButtonPressed;
}