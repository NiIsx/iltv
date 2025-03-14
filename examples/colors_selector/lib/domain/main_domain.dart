import 'package:colors_selector/procedures/main_procedures.dart';
import 'package:colors_selector/views/screens/main_screen_logic.dart';
import 'package:colors_selector/views/widgets/elements/bottom/bottom_element_logic.dart';
import 'package:colors_selector/views/widgets/elements/middle/middle_element_logic.dart';
import 'package:colors_selector/views/widgets/elements/top/top_element_logic.dart';
class MainDomain {
  final MainScreenLogic logic;

  final procedures = MainProcedures();

  MainDomain({required this.logic});

  void init(){
    logic.topElementLogic.onChangeTopElementColorButtonPressed = (){ procedures.colorSelector.changeTopElementColor(logic.mainBarLogic.counter, logic.topElementLogic.color,TopElementLogic.defaultColor); };
    logic.topElementLogic.onChangeMiddleElementColorButtonPressed = (){ procedures.colorSelector.changeMiddleElementColor(logic.mainBarLogic.counter, logic.middleElementLogic.color,TopElementLogic.defaultColor); };
    logic.topElementLogic.onChangeBottomElementColorButtonPressed = (){ procedures.colorSelector.changeBottomElementColor(logic.mainBarLogic.counter, logic.bottomElementLogic.color,TopElementLogic.defaultColor); };

    logic.middleElementLogic.onChangeTopElementColorButtonPressed = (){ procedures.colorSelector.changeTopElementColor(logic.mainBarLogic.counter, logic.topElementLogic.color,MiddleElementLogic.defaultColor); };
    logic.middleElementLogic.onChangeMiddleElementColorButtonPressed = (){ procedures.colorSelector.changeMiddleElementColor(logic.mainBarLogic.counter, logic.middleElementLogic.color,MiddleElementLogic.defaultColor); };
    logic.middleElementLogic.onChangeBottomElementColorButtonPressed = (){ procedures.colorSelector.changeBottomElementColor(logic.mainBarLogic.counter, logic.bottomElementLogic.color,MiddleElementLogic.defaultColor); };

    logic.bottomElementLogic.onChangeTopElementColorButtonPressed = (){ procedures.colorSelector.changeTopElementColor(logic.mainBarLogic.counter, logic.topElementLogic.color,BottomElementLogic.defaultColor); };
    logic.bottomElementLogic.onChangeMiddleElementColorButtonPressed = (){ procedures.colorSelector.changeMiddleElementColor(logic.mainBarLogic.counter, logic.middleElementLogic.color,BottomElementLogic.defaultColor); };
    logic.bottomElementLogic.onChangeBottomElementColorButtonPressed = (){ procedures.colorSelector.changeBottomElementColor(logic.mainBarLogic.counter, logic.bottomElementLogic.color,BottomElementLogic.defaultColor); };


  }
}