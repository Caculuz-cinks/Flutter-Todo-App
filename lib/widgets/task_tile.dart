import 'package:flutter/material.dart';
import 'package:mytodo/task_data.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  final bool isChanged;
  final String taskTitle;
  final Function checkBoxState;
  final Function onPressed;
  TaskTile(
      {this.isChanged, this.taskTitle, this.checkBoxState, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onPressed,
      title: Text(taskTitle,
          style: TextStyle(
              decoration: isChanged ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxState,
        value: isChanged,
      ),
    );
  }
}
