import 'package:iltv/iltv.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class MainProcedures {
  final IltvMessagesCallbacks imc;
  
  MainProcedures({required this.imc});

  final _random = Random();
  
  // Генерирует случайный цвет
  Color _generateRandomColor() {
    return Color.fromARGB(
      255,
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }

  // Изменяет цвет первого квадрата
  void changeFirstSquareColor(Function(Color) onColorChanged) {
    final newColor = _generateRandomColor();
    onColorChanged(newColor);
    imc.onInfoCallback('Первый квадрат получил новый цвет: ${newColor.toString()}');
  }

  // Изменяет цвет второго квадрата
  void changeSecondSquareColor(Function(Color) onColorChanged) {
    final newColor = _generateRandomColor();
    onColorChanged(newColor);
    imc.onInfoCallback('Второй квадрат получил новый цвет: ${newColor.toString()}');
  }

  // Изменяет цвет третьего квадрата
  void changeThirdSquareColor(Function(Color) onColorChanged) {
    final newColor = _generateRandomColor();
    onColorChanged(newColor);
    imc.onInfoCallback('Третий квадрат получил новый цвет: ${newColor.toString()}');
  }

  // Инициализация цветов
  Future<void> initColors() async {
    imc.onInfoCallback('Цвета инициализированы');
  }
}
