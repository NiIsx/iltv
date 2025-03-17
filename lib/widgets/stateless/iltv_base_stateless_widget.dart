import 'package:flutter/widgets.dart';
import 'package:iltv/logics/iltv_base_logic.dart';

abstract class IltvBaseStatelessWidget<T extends IltvBaseLogic> extends StatelessWidget{
  final T logic;
  
  const IltvBaseStatelessWidget({super.key, required this.logic});
}