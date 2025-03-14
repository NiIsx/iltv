import 'package:colors_selector/views/widgets/main_bar/main_bar_logic.dart';
import 'package:flutter/material.dart';
import 'package:iltv/widgets/iltv_simple_widget.dart';

class MainBar extends StatelessWidget {
  final MainBarLogic logic;

  const MainBar({super.key, required this.logic});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IltvSimpleWidget(
          value: logic.counter,
          builder: () => Text('${logic.counter.value}'),
        ),
      ],
    );
  }
}