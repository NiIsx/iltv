import 'package:iltv/iltv.dart';
import 'package:flutter/material.dart';
import 'window_logic.dart';
import '../screens/first_screen/first_screen.dart';
import '../screens/second_screen/second_screen.dart';

class WindowDesktop extends IltvBaseStatelessWidget<WindowLogic> {
  const WindowDesktop({super.key, required super.logic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Боковое меню
          Container(
            width: 250,
            color: Colors.grey[100],
            child: Column(
              children: [
                Container(
                  height: 60,
                  color: Colors.blue[600],
                  child: const Center(
                    child: Text(
                      'Меню',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                _buildMenuItem(
                  icon: Icons.home,
                  title: 'Первый экран',
                  isSelected: logic.currentScreenIndex.value == 0,
                  onTap: logic.switchToFirstScreen,
                ),
                _buildMenuItem(
                  icon: Icons.settings,
                  title: 'Второй экран',
                  isSelected: logic.currentScreenIndex.value == 1,
                  onTap: logic.switchToSecondScreen,
                ),
              ],
            ),
          ),
          // Основной контент
          Expanded(
            child: IltvSimpleStatefulWidget(
              value: logic.currentScreenIndex,
              builder: () {
                switch (logic.currentScreenIndex.value) {
                  case 0:
                    return FirstScreen(logic: logic.firstScreenLogic);
                  case 1:
                    return SecondScreen(logic: logic.secondScreenLogic);
                  default:
                    return FirstScreen(logic: logic.firstScreenLogic);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: ListTile(
        leading: Icon(
          icon,
          color: isSelected ? Colors.blue[600] : Colors.grey[600],
        ),
        title: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.blue[600] : Colors.grey[700],
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        tileColor: isSelected ? Colors.blue[50] : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onTap: onTap,
      ),
    );
  }
}
