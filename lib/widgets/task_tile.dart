import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String todoName;
  final bool isChecked;
  final Function checkboxState;
  final Function deleteTask;
  TaskTile(
      {this.todoName, this.isChecked, this.checkboxState, this.deleteTask});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: deleteTask,
      child: ListTile(
        title: Text(
          todoName,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          onChanged: checkboxState,
        ),
      ),
    );
  }
}
