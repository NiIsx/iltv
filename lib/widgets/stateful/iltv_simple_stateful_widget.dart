import 'package:flutter/material.dart';
import '../../../src/iltv_logic_value_mixin.dart';
import 'package:iltv/widgets/stateful/multiple_values/iltv_base_stateful_widget.dart';


class IltvSimpleStatefulWidget extends IltvBaseStatefulWidget {
  const IltvSimpleStatefulWidget({super.key, required super.value, required super.builder, Function? onInitState});

  @override
  State<IltvSimpleStatefulWidget> createState() => IltvSimpleStatefulWidgetState();
}

@protected
class IltvSimpleStatefulWidgetState<T extends IltvSimpleStatefulWidget> extends IltvBaseStatefulWidgetState<T> {



  @override
  Widget build(BuildContext context) {
    isMounted = true;

    (widget.value as IltvLogicValueMixin).onUpdated = (){
      if (isMounted == true){
        setState((){});         
      }
    };
    return widget.builder();
  }
}