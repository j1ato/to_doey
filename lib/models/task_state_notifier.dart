import 'package:flutter/material.dart';
import 'package:to_doey/models/task_model.dart';
import 'package:collection/collection.dart';

class TaskStateNotifier extends ChangeNotifier {
  List<Task> _tasks = [];

  int get taskCount => _tasks.length;
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void updateToggleState({Task task}) {
    task.toggleChecked();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void addTaskToList(String taskName, BuildContext context) {
    if (taskName != null) {
      _tasks.add(Task(name: taskName));
      Navigator.pop(context);
      notifyListeners();
    }
  }
}
