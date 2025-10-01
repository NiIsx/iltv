import 'package:flutter/cupertino.dart';
import 'package:iltv/logics/iltv_logic_value_read_only.dart';

class IltvLogicValueNotSafe<T> extends IltvLogicValueReadOnly<T>{ //Not generating exception when onUpdate == null 
  set value(T newValue) {
    isInitialized = true;
    super.innerValue = newValue;
    if(onUpdated != null){
      onUpdated!();
    }
  }

  @protected
  IltvLogicValueNotSafe(super.initValue);
}