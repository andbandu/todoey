import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Consumer<TaskData>(
          builder: (context, taskdata, child) {
            return ListView.builder(
              itemBuilder: (BuildContext context, index) {
                final tasks = taskdata.task[index];
                return TaskTile(
                  todoName: tasks.name,
                  isChecked: tasks.isDone,
                  checkboxState: (value) {
                    taskdata.updateTask(tasks);
                  },
                  deleteTask: () {
                    taskdata.deleteTask(index);
                  },
                );
              },
              itemCount: taskdata.taskLength,
            );
          },
        ));
  }
}
