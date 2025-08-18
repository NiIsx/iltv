import 'package:flutter/cupertino.dart';

class IltvLogicValueReadOnly<T>{
  @protected T innerValue;
  T get value => innerValue; 

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