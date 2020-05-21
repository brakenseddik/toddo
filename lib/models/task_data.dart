import 'package:flutter/foundation.dart';
import 'package:toddo/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Task one'),
    Task(name: 'Task two'),
    Task(name: 'Task three')
  ];
  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTitle) {
    final task = Task(name: newTitle);
    _tasks.add(task);
    notifyListeners();
  }
}
