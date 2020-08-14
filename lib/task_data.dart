import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:mytodo/modules/task.dart';

class TaskList extends ChangeNotifier {
  List<Task> _tasks = [
    Task(task: 'Buy Milk'),
    Task(task: 'Buy Eggs'),
    Task(task: 'Buy Bread')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTasks(String newtask) {
    _tasks.add(Task(task: newtask));

    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

  void updateTask(Task task) {
    task.toggleIsDone();
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
