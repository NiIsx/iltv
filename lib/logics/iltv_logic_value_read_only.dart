import 'package:flutter/cupertino.dart';
import 'package:iltv/logics/iltv_base_logic.dart';
import '../src/iltv_logic_value_mixin.dart';

class IltvLogicValueReadOnly<T> extends IltvBaseLogic with IltvLogicValueMixin{
  @protected T innerValue;
  T get value => innerValue;
  bool get hasCallback => onUpdated != null; 

  @protected
  bool isInitialized = false;

  IltvLogicValueReadOnly(T initValue) : innerValue = initValue;

  void init(T value){
    if(isInitialized){
      throw Exception('Value already initialized!');
    }
    isInitialized = true;
    innerValue = value;
  }
}