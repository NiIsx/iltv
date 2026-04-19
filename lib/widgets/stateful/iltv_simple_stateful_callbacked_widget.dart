import 'package:flutter/material.dart';
import '../../src/iltv_logic_value_mixin.dart';
import 'package:iltv/widgets/stateful/iltv_simple_stateful_widget.dart';


class IltvSimpleStatefulCallbackedWidget extends IltvSimpleStatefulWidget {
  Function? onInitState;
  Function? disposed;

  IltvSimpleStatefulCallbackedWidget({super.key, required super.value, required super.builder, Function? initState, Function? disposed});

  @override
  State<IltvSimpleStatefulCallbackedWidget> createState() => IltvSimpleStatefulCallbackedWidgetState();
}

@protected
class IltvSimpleStatefulCallbackedWidgetState<T extends IltvSimpleStatefulCallbackedWidget> extends IltvSimpleStatefulWidgetState<T> {

  @override
  void initState(){
    super.initState();
    if(widget.onInitState != null){
      widget.onInitState!();
    }
  }

  @override
  void dispose() {
    if(widget.disposed != null){
      widget.disposed!();
    }
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