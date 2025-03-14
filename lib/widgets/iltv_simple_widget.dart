import 'package:flutter/material.dart';
import 'package:iltv/logics/iltv_logic_value.dart';

class IltvSimpleWidget extends StatefulWidget {
  final IltvLogicValue value;
  final Widget Function() builder;

  const IltvSimpleWidget({super.key, required this.value, required this.builder});

  @override
  State<IltvSimpleWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<IltvSimpleWidget> {
  @override
  Widget build(BuildContext context) {
    widget.value.onUpdated = (){
      setState((){});
    };

    return widget.builder();
  }
}