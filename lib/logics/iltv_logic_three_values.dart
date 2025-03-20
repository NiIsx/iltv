import 'package:iltv/logics/iltv_logic_two_values.dart';

class IltvLogicThreeValues<T> extends IltvLogicTwoValues{
  IltvLogicThreeValues(super.initValue, super.initValue2, T initValue3) : _value3 = initValue3;

  T _value3;
  T get value3 => _value3; 
  set value3(T newValue) {
    isInitialized = true;
    _value3 = newValue;
    if(onUpdated == null){
      throw Exception('"onUpdated" callback in null!');
    }
    onUpdated!();
  }
}