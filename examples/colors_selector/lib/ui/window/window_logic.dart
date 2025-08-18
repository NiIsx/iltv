import 'package:iltv/iltv.dart';
import 'package:flutter/material.dart';
import '../screens/first_screen/first_screen_logic.dart';
import '../screens/second_screen/second_screen_logic.dart';

class WindowLogic extends IltvBaseLogic {
  WindowLogic({
    required this.firstScreenLogic,
    required this.secondScreenLogic,
  });

  final FirstScreenLogic firstScreenLogic;
  final SecondScreenLogic secondScreenLogic;

  final currentScreenIndex = IltvLogicValue<int>(0);

  void switchToFirstScreen() {
    currentScreenIndex.value = 0;
  }

  void switchToSecondScreen() {
    currentScreenIndex.value = 1;
  }
}
