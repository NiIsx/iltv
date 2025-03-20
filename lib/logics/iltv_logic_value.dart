import 'package:flutter/cupertino.dart';

class IltvLogicValue<T>{
  T _value;
  T get value => _value; 
  set value(T newValue) {
    isInitialized = true;
    _value = newValue;
    if(onUpdated == null){
      throw Exception('"onUpdated" callback in null!');
    }
    onUpdated!();
  }

  @protected
  bool isInitialized = false;

  void Function()? onUpdated;

  IltvLogicValue(T initValue) : _value = initValue;

  void init(T value){
    if(isInitialized){
      throw Exception('Value already initialized!');
    }
    isInitialized = true;
    _value = value;
  }
}