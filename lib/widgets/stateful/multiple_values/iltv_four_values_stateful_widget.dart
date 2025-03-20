import 'package:flutter/material.dart';
import 'package:iltv/logics/iltv_logic_value.dart';
import 'package:iltv/widgets/stateful/iltv_simple_stateful_widget.dart';
import 'package:iltv/widgets/stateful/multiple_values/iltv_three_values_stateful_widget.dart';

class IltvFourValuesStatefulWidget extends IltvThreeValuesStatefulWidget {
  final IltvLogicValue value4;

  const IltvFourValuesStatefulWidget({super.key, required super.builder, required super.value, required super.value2, required super.value3, required this.value4});

  @override
  void initOnUpdates(Function(VoidCallback callback) setState){
    value.onUpdated = () { setState((){}); };
    value2.onUpdated = () { setState((){}); };
    value3.onUpdated = () { setState((){}); };
    value4.onUpdated = () { setState((){}); };
  }

  @override
  State<IltvFourValuesStatefulWidget> createState() => IltvSimpleStatefulWidgetState<IltvFourValuesStatefulWidget>();
}