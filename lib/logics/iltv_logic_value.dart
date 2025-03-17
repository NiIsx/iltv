class IltvLogicValue<T>{
  T _value;
  T get value => _value; 
  set value(T newValue) {
    _isInitialized = true;
    _value = newValue;
    if(onUpdated == null){
      throw Exception('"onUpdated" callback in null!');
    }
    onUpdated!();
  }

  bool _isInitialized = false;

  void Function()? onUpdated;

  IltvLogicValue(T initValue) : _value = initValue;

  void init(T value){
    if(_isInitialized){
      throw Exception('Value already initialized!');
    }
    _isInitialized = true;
    _value = value;
  }
}