import 'package:flutter/material.dart';

abstract class IltvBaseLogic {
  @protected
  void Function()? onUpdated = null;
}