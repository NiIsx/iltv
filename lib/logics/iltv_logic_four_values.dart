import 'package:iltv/logics/iltv_logic_three_values.dart';

class IltvLogicFourValues<T> extends IltvLogicThreeValues{
  IltvLogicFourValues(super.initValue, super.initValue2, super.initValue3, T initValue4) : _value4 = initValue4;

  T _value4;
  T get value4 => _value4; 
  set value4(T newValue) {
    isInitialized = true;
    _value4 = newValue;
    if(onUpdated == null){
      throw Exception('"onUpdated" callback in null!');
    }
    onUpdated!();
  }
}