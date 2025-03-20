import 'package:flutter/material.dart';
import 'package:iltv/logics/iltv_logic_value.dart';

class IltvSimpleStatefulWidget extends StatefulWidget {
  final Widget Function() builder;
  final IltvLogicValue value;

  const IltvSimpleStatefulWidget({super.key, required this.builder, required this.value});

  void initOnUpdates(Function(VoidCallback callback) setState){
    value.onUpdated = () { setState((){}); };
  }

  @override
  State<IltvSimpleStatefulWidget> createState() => IltvSimpleStatefulWidgetState();
}

@protected
class IltvSimpleStatefulWidgetState<T extends IltvSimpleStatefulWidget> extends State<T> {
  @override
  Widget build(BuildContext context) {
    widget.initOnUpdates(setState);
    return widget.builder();
  }
}