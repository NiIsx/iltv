
import 'package:iltv/models/exceptions/iltv_exceptions.dart';

class IltvMessagesCallbacks{
  final void Function(String info) onInfoCallback;
  final void Function(String warning) onWarningCallback;
  final void Function(IltvException exception) onErrorCallback;

  IltvMessagesCallbacks({required this.onInfoCallback, required this.onWarningCallback, required this.onErrorCallback});
}
