import 'package:flutter/material.dart';
import 'package:mytodo/modules/task.dart';
import 'package:mytodo/screens/task.dart';
import 'package:mytodo/task_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskList>(
      create: (_) => TaskList(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
