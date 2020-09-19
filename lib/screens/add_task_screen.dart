import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_doey/models/task_state_notifier.dart';

class AddTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskName;

    return Container(
        padding: const EdgeInsets.all(30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.w600)),
              TextField(
                // controller: controller,
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (text) => taskName = text,
              ),
              const SizedBox(
                height: 25,
              ),
              Flexible(
                child: FlatButton(
                  onPressed: () =>
                      Provider.of<TaskStateNotifier>(context, listen: false)
                          .addTaskToList(taskName, context),
                  color: Colors.lightBlueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Add',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              )
            ]));
  }
}
