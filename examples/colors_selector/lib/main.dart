import 'package:flutter/material.dart';
import 'package:iltv/iltv.dart';
import 'domains/main_domain.dart';
import 'ui/window/window_desktop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ILTV Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: WindowDesktop(logic: MainDomain().mainLogic),
    );
  }
}
