import 'package:flutter/material.dart';
import 'package:toddo/models/task_data.dart';
import 'package:toddo/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class taskList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return taskTile(
              title: TaskData.tasks[index].name,
              isChecked: TaskData.tasks[index].isdone,
              checkBoxCallback: (bool checkBoxState) {
                TaskData.updateTask(TaskData.tasks[index]);
              },
              longPress: () {
                TaskData.removeTask(TaskData.tasks[index]);
              },
            );
          },
          itemCount: TaskData.taskCount,
        );
      },
    );
  }
}
