import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function toggleCheckboxState;
  final Function deleteTask;

  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.toggleCheckboxState,
      this.deleteTask});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: deleteTask,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: toggleCheckboxState));
  }
}
