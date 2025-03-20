import 'package:colors_selector/views/widgets/elements/bottom/bottom_element_logic.dart';
import 'package:flutter/material.dart';
import 'package:iltv/widgets/stateful/iltv_simple_stateful_widget.dart';

class BottomElement extends StatelessWidget{
  final BottomElementLogic logic;

  const BottomElement({super.key, required this.logic});

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
                child: Text("Top to blue", textAlign: TextAlign.center,)
              ),
              FloatingActionButton(
                onPressed: logic.onChangeMiddleElementColorButtonPressed, 
                child: Text("Middle to blue", textAlign: TextAlign.center,)
              ),
              FloatingActionButton(
                onPressed: logic.onChangeBottomElementColorButtonPressed, 
                child: Text("Bottom to blue", textAlign: TextAlign.center,)
              ),
            ],
          ),
        ),
      ),
    );
  }
}