import 'package:flutter/material.dart';
import 'package:iltv/logics/iltv_logic_value.dart';

class IltvSimpleStatefulWidget extends StatefulWidget {
  final IltvLogicValue value;
  final Widget Function() builder;

  const IltvSimpleStatefulWidget({super.key, required this.value, required this.builder});

  @override
  State<IltvSimpleStatefulWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<IltvSimpleStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    widget.value.onUpdated = (){
      setState((){});
    };

    return widget.builder();
  }
}