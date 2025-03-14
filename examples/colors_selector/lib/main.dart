import 'package:colors_selector/domain/main_domain.dart';
import 'package:colors_selector/views/screens/main_screen.dart';
import 'package:colors_selector/views/screens/main_screen_logic.dart';
import 'package:flutter/material.dart';

void main() {
  final mainlogic = MainScreenLogic();
  final mainScreen = MainScreen(logic: mainlogic);

  final domain = MainDomain(logic: mainlogic);
  domain.init();

  runApp(MyApp(mainScreen: mainScreen));
}

class MyApp extends StatelessWidget {
  final MainScreen mainScreen;

  const MyApp({super.key, required this.mainScreen});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iltv example',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: mainScreen,
    );
  }
}
