import 'package:flutter/material.dart';
import 'package:iltv/logics/iltv_logic_value.dart';

class IltvSimpleStatefulWidget extends StatefulWidget {
  final IltvLogicValue value;
  final Widget Function() builder;

  const IltvSimpleStatefulWidget({super.key, required this.value, required this.builder});

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