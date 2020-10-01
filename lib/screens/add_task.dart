import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String taskName;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.lightBlueAccent),
            ),
            TextField(
              onChanged: (value) {
                taskName = value;
              },
              autofocus: true,
              decoration: InputDecoration(fillColor: Colors.lightBlueAccent),
            ),
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(taskName);
                Navigator.pop(context);
              },
              child: Text("Add"),
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
      ),
    );
  }
}
