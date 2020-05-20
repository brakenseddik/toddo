import 'package:flutter/material.dart';
import 'package:toddo/models/task.dart';
import 'package:toddo/widgets/task_tile.dart';

class taskList extends StatefulWidget {
  final List<Task> tasks;
  taskList({this.tasks});
  @override
  _taskListState createState() => _taskListState();
}

class _taskListState extends State<taskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return taskTile(
          title: widget.tasks[index].name,
          isChecked: widget.tasks[index].isdone,
          checkBoxCallback: (bool checkBoxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
