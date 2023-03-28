import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/task.dart';

class TaskWidget extends StatelessWidget {
  Task t;
  Function function;
  TaskWidget(this.t, this.function);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CheckboxListTile(
      value: t.isComplete,
      onChanged: (v) {
        t.isComplete = !t.isComplete;
        function();
      },
      title: Text(t.name),
    );
  }
}
