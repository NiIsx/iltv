import 'package:flutter/material.dart';
import 'package:iltv/iltv.dart';

class ColorSelectorProcedures {

  void changeTopElementColor(IltvLogicValue<int> mainBarCounter, IltvLogicValue<Color> topElementColor, Color color){
    topElementColor.value = color;
    mainBarCounter.value++;
  }
  void changeMiddleElementColor(IltvLogicValue<int> mainBarCounter, IltvLogicValue<Color> middleElementColor, Color color){
    middleElementColor.value = color;
    mainBarCounter.value++;
  }
  void changeBottomElementColor(IltvLogicValue<int> mainBarCounter, IltvLogicValue<Color> bottomElementColor, Color color){
    bottomElementColor.value = color;
    mainBarCounter.value++;
  }
}