import 'package:iltv/logics/iltv_logic_four_values.dart';

class IltvLogicFiveValues<T> extends IltvLogicFourValues{
  IltvLogicFiveValues(super.initValue, super.initValue2, super.initValue3, super.initValue4, T initValue5) : _value5 = initValue5;

  T _value5;
  T get value5 => _value5; 
  set value5(T newValue) {
    isInitialized = true;
    _value5 = newValue;
    if(onUpdated == null){
      throw Exception('"onUpdated" callback in null!');
    }
    onUpdated!();
  }
}