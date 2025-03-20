import 'package:flutter/material.dart';
import 'package:iltv/logics/iltv_logic_value.dart';
import 'package:iltv/widgets/stateful/iltv_simple_stateful_widget.dart';

class IltvTwoValuesStatefulWidget extends IltvSimpleStatefulWidget {
  final IltvLogicValue value2;

  const IltvTwoValuesStatefulWidget({super.key, required super.builder, required super.value, required this.value2});

  @override
  void initOnUpdates(Function(VoidCallback callback) setState){
    value.onUpdated = () { setState((){}); };
    value2.onUpdated = () { setState((){}); };
  }

  @override
  State<IltvTwoValuesStatefulWidget> createState() => IltvSimpleStatefulWidgetState<IltvTwoValuesStatefulWidget>();
}