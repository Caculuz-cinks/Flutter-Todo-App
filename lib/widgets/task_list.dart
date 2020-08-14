import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'task_tile.dart';
import 'package:mytodo/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskList>(builder: (context, taskData, child) {
      return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.task,
              isChanged: task.isDone,
              checkBoxState: (bool value) {
                taskData.updateTask(task);
              },
              onPressed: () {
                taskData.removeTask(task);
              },
            );
          },
          itemCount: taskData.taskCount);
    });
  }
}
