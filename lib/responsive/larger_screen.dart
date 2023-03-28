import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ass/view/Screens/widgets/allTaskScreen.dart';

import '../view/Screens/widgets/completeTaskScreen.dart';
import '../view/Screens/widgets/incompleteTaskScreen.dart';

class large_screen extends StatefulWidget {
  State<large_screen> createState() => _largerscreen();
  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
}

class _largerscreen extends State<large_screen> {
  PageController pagecontroller = PageController();

  int pageIndex = 0;
  updateScreen() {
    log('set state from main screen has been excuted');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todo App"),
        ),
        body: Row(
          children: [
            Expanded(
                child: Column(children: [
              ListTile(
                  onTap: () {
                    pagecontroller.jumpTo(0);

                    Navigator.of(context).pop();
                  },
                  title: Text("all tasks"),
                  subtitle: Text("all task screen")),
              ListTile(
                  onTap: () {
                    pagecontroller.jumpTo(1);

                    Navigator.of(context).pop();
                  },
                  title: Text("complete tasks"),
                  subtitle: Text("complete task screen")),
              ListTile(
                  onTap: () {
                    pagecontroller.jumpTo(2);

                    Navigator.of(context).pop();
                  },
                  title: Text("incomplete tasks"),
                  subtitle: Text("incomplete task screen"))
            ])),
            Expanded(
              child: PageView(
                controller: pagecontroller,
                children: [
                  allTaskScreen(updateScreen),
                  CompleteTasksScreen(updateScreen),
                  InCompleteTasksScreen(updateScreen)
                ],
              ),
            ),
          ],
        ));
  }
}
