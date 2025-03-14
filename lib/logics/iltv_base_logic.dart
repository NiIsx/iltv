import 'package:iltv/models/iltv_messages_callbacks.dart';

abstract class IltvBaseLogic{
  final IltvMessagesCallbacks omc;

  IltvBaseLogic({required this.omc});
}