import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/add_task.dart';
import 'package:todoey/widgets/task_list.dart';
import 'package:provider/provider.dart';

class ToDoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTask(),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 32.0, left: 16.0, right: 16.0, bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.menu,
                    color: Colors.lightBlueAccent,
                    size: 30.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "TODOEY",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "task : ${Provider.of<TaskData>(context).taskLength}",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: TaskList(),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
