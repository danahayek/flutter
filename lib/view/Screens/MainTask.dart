import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ass/view/Screens/widgets/allTaskScreen.dart';
import 'package:flutter_ass/view/Screens/widgets/completeTaskScreen.dart';
import 'package:flutter_ass/view/Screens/widgets/incompleteTaskScreen.dart';

import '../../responsive/larger_screen.dart';

// void main() {
//   runApp(MaterialApp(home: MainTasksScreen()));
// }

class MainTasksScreen extends StatefulWidget {
  @override
  State<MainTasksScreen> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<MainTasksScreen> {
  PageController pageController = PageController();

  int pageIndex = 0;
  updateScreen() {
    log('set state from main screen has been excuted');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
              accountName: Text("account name"),
              accountEmail: Text("account email"))
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (v) {
            pageIndex = v;
            pageController.jumpToPage(v);
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "All Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.done), label: "Complete Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.cancel), label: "InComplete Tasks"),
          ]),
      appBar: AppBar(
        title: Text("Todo App"),
        actions: [
          ElevatedButton(
              onPressed: () {
                updateScreen();
              },
              child: Text("Test SetState"))
        ],
      ),
      body: PageView(
        controller: pageController,
        children: [
          allTaskScreen(updateScreen),
          CompleteTasksScreen(updateScreen),
          InCompleteTasksScreen(updateScreen)
        ],
      ),
    );
  }
}
