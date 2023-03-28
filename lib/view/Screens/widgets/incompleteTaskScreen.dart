import 'package:flutter/cupertino.dart';

import '../../../data/data.dart';
import '../../../models/task.dart';
import 'TaskWidget.dart';

class InCompleteTasksScreen extends StatelessWidget {
  Function function;
  InCompleteTasksScreen(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount:
            Data_Source.tasks.where((element) => !element.isComplete).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              Data_Source.tasks
                  .where((element) => !element.isComplete)
                  .toList()[index],
              function);
        });
  }
}
