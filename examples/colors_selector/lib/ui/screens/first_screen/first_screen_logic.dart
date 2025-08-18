import 'package:iltv/iltv.dart';
import 'package:flutter/material.dart';

class FirstScreenLogic extends IltvBaseLogic {
  FirstScreenLogic({
    required this.onFirstSquareTap,
    required this.onSecondSquareTap,
    required this.onThirdSquareTap,
  });

  final VoidCallback onFirstSquareTap;
  final VoidCallback onSecondSquareTap;
  final VoidCallback onThirdSquareTap;

  final firstSquareColor = IltvLogicValue<Color>(Colors.red);
  final secondSquareColor = IltvLogicValue<Color>(Colors.green);
  final thirdSquareColor = IltvLogicValue<Color>(Colors.blue);
}
