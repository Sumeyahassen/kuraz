import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';
import 'add_task.dart';

class TaskList extends StatefulWidget {
  const TaskList({ Key? key }) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context,index)),
      
    );
  }
}