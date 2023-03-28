import 'package:flutter/material.dart';

import '../../../data/data.dart';
import '../../../models/task.dart';
import 'TaskWidget.dart';

class allTaskScreen extends StatelessWidget {
  Function fun;

  allTaskScreen(this.fun);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Data_Source.tasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(Data_Source.tasks[index], fun);
        });
  }
}
