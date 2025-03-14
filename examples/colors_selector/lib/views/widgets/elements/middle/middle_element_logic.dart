import 'package:flutter/material.dart';
import 'package:iltv/logics/iltv_logic_value.dart';

class MiddleElementLogic {
  static const defaultColor = Colors.green;
  var color = IltvLogicValue<Color>(defaultColor);
  
  void Function()? onChangeTopElementColorButtonPressed;
  void Function()? onChangeMiddleElementColorButtonPressed;
  void Function()? onChangeBottomElementColorButtonPressed;
}