import 'package:iltv/iltv.dart';
import 'package:flutter/material.dart';

class SecondScreenLogic extends IltvBaseLogic {
  SecondScreenLogic({
    required this.onFirstSquareTap,
    required this.onSecondSquareTap,
    required this.onThirdSquareTap,
  });

  final VoidCallback onFirstSquareTap;
  final VoidCallback onSecondSquareTap;
  final VoidCallback onThirdSquareTap;

  final firstSquareColor = IltvLogicValue<Color>(Colors.purple);
  final secondSquareColor = IltvLogicValue<Color>(Colors.orange);
  final thirdSquareColor = IltvLogicValue<Color>(Colors.teal);
}
