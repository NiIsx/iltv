import 'package:colors_selector/views/widgets/elements/top/top_element_logic.dart';
import 'package:flutter/material.dart';
import 'package:iltv/widgets/iltv_simple_widget.dart';

class TopElement extends StatelessWidget{
  final TopElementLogic logic;

  const TopElement({super.key, required this.logic});

  @override
  Widget build(BuildContext context) {
    return IltvSimpleWidget(
      value: logic.color,
      builder: () => Container(
        color: logic.color.value,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: logic.onChangeTopElementColorButtonPressed, 
                child: Text("Top to red", textAlign: TextAlign.center,)
              ),
              FloatingActionButton(
                onPressed: logic.onChangeMiddleElementColorButtonPressed, 
                child: Text("Middle to red", textAlign: TextAlign.center,)
              ),
              FloatingActionButton(
                onPressed: logic.onChangeBottomElementColorButtonPressed, 
                child: Text("Bottom to red", textAlign: TextAlign.center,)
              ),
            ],
          ),
        ),
      ),
    );
  }
}