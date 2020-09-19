import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    this.isChecked, this.taskTitle, this.checkboxToggleState, this.deleteTask});

  final bool isChecked;
  final String taskTitle;
  final Function checkboxToggleState;
  final Function deleteTask;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        taskTitle,
        style: TextStyle(
            fontSize: 25,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxToggleState,
      ),
    );
  }
}
