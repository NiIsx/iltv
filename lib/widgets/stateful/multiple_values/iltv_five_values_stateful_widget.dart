import 'package:flutter/material.dart';
import 'package:iltv/logics/iltv_logic_value.dart';
import 'package:iltv/widgets/stateful/iltv_simple_stateful_widget.dart';
import 'package:iltv/widgets/stateful/multiple_values/iltv_four_values_stateful_widget.dart';

class IltvFiveValuesStatefulWidget extends IltvFourValuesStatefulWidget {
  final IltvLogicValue value5;

  const IltvFiveValuesStatefulWidget({super.key, required super.builder, required super.value, required super.value2, required super.value3, required super.value4, required this.value5});

  @override
  void initOnUpdates(Function(VoidCallback callback) setState){
    value.onUpdated = () { setState((){}); };
    value2.onUpdated = () { setState((){}); };
    value3.onUpdated = () { setState((){}); };
    value4.onUpdated = () { setState((){}); };
    value5.onUpdated = () { setState((){}); };
  }

  @override
  State<IltvFiveValuesStatefulWidget> createState() => IltvSimpleStatefulWidgetState<IltvFiveValuesStatefulWidget>();
}