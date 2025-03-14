import 'package:flutter/material.dart';
import 'package:iltv/logics/iltv_logic_value.dart';

class TopElementLogic {
  static const defaultColor = Colors.red;
  var color = IltvLogicValue<Color>(defaultColor);
  
  void Function()? onChangeTopElementColorButtonPressed;
  void Function()? onChangeMiddleElementColorButtonPressed;
  void Function()? onChangeBottomElementColorButtonPressed;
}