import 'package:iltv/logics/iltv_logic_value.dart';

class IltvLogicTwoValues<T> extends IltvLogicValue{
  IltvLogicTwoValues(super.initValue, T initValue2) : _value2 = initValue2;

  T _value2;
  T get value2 => _value2; 
  set value2(T newValue) {
    isInitialized = true;
    _value2 = newValue;
    if(onUpdated == null){
      throw Exception('"onUpdated" callback in null!');
    }
    onUpdated!();
  }
}