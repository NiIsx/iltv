import 'package:iltv/iltv.dart';
import '../procedures/main_procedures.dart';
import '../ui/screens/first_screen/first_screen_logic.dart';
import '../ui/screens/first_screen/first_screen.dart';
import '../ui/screens/second_screen/second_screen_logic.dart';
import '../ui/screens/second_screen/second_screen.dart';
import '../ui/window/window_logic.dart';

class MainDomain {
  late final FirstScreenLogic firstScreenLogic;
  late final firstScreen = FirstScreen(logic: firstScreenLogic);

  late final SecondScreenLogic secondScreenLogic;
  late final secondScreen = SecondScreen(logic: secondScreenLogic);

  late final mainLogic = WindowLogic(
    firstScreenLogic: firstScreenLogic,
    secondScreenLogic: secondScreenLogic,
  );

  late final procedures = MainProcedures(imc: IltvMessagesCallbacks(
    onInfoCallback: onInfoCallback, 
    onWarningCallback: onWarningCallback, 
    onErrorCallback: onErrorCallback,
  ));

  MainDomain(){
    firstScreenLogic = FirstScreenLogic(
      onFirstSquareTap: () => procedures.changeSecondSquareColor(
        (color) => firstScreenLogic.secondSquareColor.value = color
      ),
      onSecondSquareTap: () => procedures.changeThirdSquareColor(
        (color) => firstScreenLogic.thirdSquareColor.value = color
      ),
      onThirdSquareTap: () => procedures.changeFirstSquareColor(
        (color) => firstScreenLogic.firstSquareColor.value = color
      ),
    );
    
    secondScreenLogic = SecondScreenLogic(
      onFirstSquareTap: () => procedures.changeSecondSquareColor(
        (color) => secondScreenLogic.secondSquareColor.value = color
      ),
      onSecondSquareTap: () => procedures.changeThirdSquareColor(
        (color) => secondScreenLogic.thirdSquareColor.value = color
      ),
      onThirdSquareTap: () => procedures.changeFirstSquareColor(
        (color) => secondScreenLogic.firstSquareColor.value = color
      ),
    );
  }

  Future<void> init() async {
    // Инициализация цветов
    await procedures.initColors();
  }

  void onInfoCallback(String info) {
    // Обработка информационных сообщений
  }

  void onWarningCallback(String warning) {
    // Обработка предупреждений
  }

  void onErrorCallback(IltvException exception) {
    // Обработка ошибок
  }
}
