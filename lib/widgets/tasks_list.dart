import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_doey/models/task_state_notifier.dart';
import 'package:to_doey/widgets/list_item.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskStateNotifier>(
      builder: (context, taskStateNotifier, child) => ListView.builder(
        itemCount: taskStateNotifier.taskCount,
        itemBuilder: (context, taskIndex) {
          final task = taskStateNotifier.tasks[taskIndex];
          return ListItem(
            isChecked: task.isChecked,
            taskTitle: task.name,
            checkboxToggleState: (newState) =>
                taskStateNotifier.updateToggleState(
                    task: task),
                    deleteTask: () => taskStateNotifier.deleteTask(task),
          );
        },
      ),
    );
  }
}
