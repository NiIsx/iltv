import 'package:colors_selector/views/widgets/elements/middle/middle_element_logic.dart';
import 'package:flutter/material.dart';
import 'package:iltv/widgets/statefull/iltv_simple_stateful_widget.dart';

class MiddleElement extends StatelessWidget{
  final MiddleElementLogic logic;

  const MiddleElement({super.key, required this.logic});

  @override
  Widget build(BuildContext context) {
    return IltvSimpleStatefulWidget(
      value: logic.color,
      builder: () => Container(
        color: logic.color.value,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: logic.onChangeTopElementColorButtonPressed, 
                child: Text("Top to green", textAlign: TextAlign.center,)
              ),
              FloatingActionButton(
                onPressed: logic.onChangeMiddleElementColorButtonPressed, 
                child: Text("Middle to green", textAlign: TextAlign.center,)
              ),
              FloatingActionButton(
                onPressed: logic.onChangeBottomElementColorButtonPressed, 
                child: Text("Bottom to green", textAlign: TextAlign.center,)
              ),
            ],
          ),
        ),
      ),
    );
  }
}