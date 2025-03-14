
import 'package:colors_selector/views/widgets/elements/bottom/bottom_element_logic.dart';
import 'package:colors_selector/views/widgets/elements/middle/middle_element_logic.dart';
import 'package:colors_selector/views/widgets/elements/top/top_element_logic.dart';
import 'package:colors_selector/views/widgets/main_bar/main_bar_logic.dart';

class MainScreenLogic {
  var mainBarLogic = MainBarLogic();

  var topElementLogic = TopElementLogic();
  var middleElementLogic = MiddleElementLogic();
  var bottomElementLogic = BottomElementLogic();

  MainScreenLogic();
}