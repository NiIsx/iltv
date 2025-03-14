import 'package:colors_selector/views/screens/main_screen_logic.dart';
import 'package:colors_selector/views/widgets/elements/bottom/bottom_element.dart';
import 'package:colors_selector/views/widgets/elements/middle/middle_element.dart';
import 'package:colors_selector/views/widgets/elements/top/top_element.dart';
import 'package:colors_selector/views/widgets/main_bar/main_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final MainScreenLogic logic;
  
  const MainScreen({super.key, required this.logic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: MainBar(logic: logic.mainBarLogic),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: TopElement(logic: logic.topElementLogic)),
          Expanded(child: MiddleElement(logic: logic.middleElementLogic)),
          Expanded(child: BottomElement(logic: logic.bottomElementLogic)),
        ],
      ),
    );
  }
}