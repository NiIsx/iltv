import 'package:flutter/material.dart';
import 'package:iltv/logics/iltv_logic_value.dart';
import 'package:iltv/widgets/stateful/iltv_simple_stateful_widget.dart';
import 'package:iltv/widgets/stateful/multiple_values/iltv_two_values_stateful_widget.dart';

class IltvThreeValuesStatefulWidget extends IltvTwoValuesStatefulWidget {
  final IltvLogicValue value3;

  const IltvThreeValuesStatefulWidget({super.key, required super.builder, required super.value, required super.value2, required this.value3});

  @override
  void initOnUpdates(Function(VoidCallback callback) setState){
    value.onUpdated = () { setState((){}); };
    value2.onUpdated = () { setState((){}); };
    value3.onUpdated = () { setState((){}); };
  }

  @override
  State<IltvThreeValuesStatefulWidget> createState() => IltvSimpleStatefulWidgetState<IltvThreeValuesStatefulWidget>();
}