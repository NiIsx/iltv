class IltvLogicValue<T>{
  T _value;
  T get value => _value; 
  set value(T newValue) {
    _value = newValue; 
    onUpdated!();
  }

  void Function()? onUpdated;

  IltvLogicValue(T initValue) : _value = initValue;
}