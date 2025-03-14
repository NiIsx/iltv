
import 'package:iltv/models/exceptions/statics/iltv_exception_types.dart';

class IltvException implements Exception{
  final String message;
  final IltvException? exception;
  final IltvExceptionTypes type;

  IltvException.private(this.message, Object? error) 
  : type = IltvExceptionTypes.private,
    exception = error is IltvException ? error : (error == null ? null : IltvException.private(error.toString(), null));

  IltvException.public(this.message, Object? error) 
  : type = IltvExceptionTypes.public,
    exception = error is IltvException ? error : (error == null ? null : IltvException.public(error.toString(), null));


  static String extractAllMessages(IltvException? exception)        
  {
    String result;

    if(exception == null){
      return '';
    }
    else{
        result = "${exception.message} ";
    }

    if (exception.exception != null){
      result = "$result${extractAllMessages(exception.exception)}";
    }
    return result;
  }

  static String extractPublicMessages(IltvException? exception)        
  {
    String result;

    if(exception == null){
      return '';
    }

    if (exception.type == IltvExceptionTypes.public){
        result = "${exception.message} ";
    }
    else{
        result = '';
    }

    if (exception.exception != null){
      result = "$result${extractPublicMessages(exception.exception)}";
    }
    return result;
  }
}