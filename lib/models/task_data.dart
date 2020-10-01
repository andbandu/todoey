import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task_model.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: "Buy Milk"),
    Task(name: "make game"),
    Task(name: "Develop app"),
    Task(name: "Ebay selling"),
  ];

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  int get taskLength {
    return _task.length;
  }

  void addTask(String taskName) {
    _task.add(Task(name: taskName));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _task.removeAt(index);
    notifyListeners();
  }
}
