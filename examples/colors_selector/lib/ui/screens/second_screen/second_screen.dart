import 'package:iltv/iltv.dart';
import 'package:flutter/material.dart';
import 'second_screen_logic.dart';

class SecondScreen extends IltvBaseStatelessWidget<SecondScreenLogic> {
  const SecondScreen({super.key, required super.logic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Второй экран'),
        backgroundColor: Colors.purple[100],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IltvSimpleStatefulWidget(
                  value: logic.firstSquareColor,
                  builder: () => GestureDetector(
                    onTap: logic.onFirstSquareTap,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: logic.firstSquareColor.value,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                IltvSimpleStatefulWidget(
                  value: logic.secondSquareColor,
                  builder: () => GestureDetector(
                    onTap: logic.onSecondSquareTap,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: logic.secondSquareColor.value,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                IltvSimpleStatefulWidget(
                  value: logic.thirdSquareColor,
                  builder: () => GestureDetector(
                    onTap: logic.onThirdSquareTap,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: logic.thirdSquareColor.value,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Нажмите на квадрат, чтобы изменить цвет следующего',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
