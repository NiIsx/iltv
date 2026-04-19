import 'package:flutter/cupertino.dart';
import 'package:iltv/logics/iltv_logic_value_read_only.dart';

class IltvLogicIterableValue<T extends Iterable<E>, E> extends IltvLogicValueReadOnly<T>{
  set value(T newValue) {
    isInitialized = true;
    super.innerValue = newValue;
    if(onUpdated == null){
      throw Exception('"onUpdated" callback in null!');
    }
    onUpdated!();
  }

   void onRefreshWidget(){
    if(onUpdated == null){
      throw Exception('"onUpdated" callback in null!');
    }
    onUpdated!();
  }

  @protected
  IltvLogicIterableValue(super.initValue);
}