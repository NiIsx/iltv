import 'package:flutter/material.dart';
import 'package:iltv/logics/iltv_base_logic.dart';
import '../../../src/iltv_logic_value_mixin.dart';


abstract class IltvBaseStatefulWidget extends StatefulWidget {
  final IltvBaseLogic value;
  final Widget Function() builder;
  
  const IltvBaseStatefulWidget({super.key, required this.value, required this.builder});

  @override
  State<IltvBaseStatefulWidget> createState();
}

@protected
abstract class IltvBaseStatefulWidgetState<T extends IltvBaseStatefulWidget> extends State<T> {
  bool isMounted = false;
  
  @protected
  @mustCallSuper
  void iltvDispose(){}

  @override
  void dispose() {
    isMounted = false;
    iltvDispose();
    super.dispose();
  }

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