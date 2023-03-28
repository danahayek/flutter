import 'package:flutter/material.dart';
import 'package:flutter_ass/responsive/larger_screen.dart';
import 'package:flutter_ass/responsive/small_screen.dart';
import 'package:flutter_ass/view/Screens/MainTask.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 600
        ? large_screen()
        : MainTasksScreen();
    // TODO: implement build
  }
}
