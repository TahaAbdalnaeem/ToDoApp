import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_provider/Providers/model.dart';

import 'package:todoapp_provider/widgets/task_listtile.dart';

class listview_widget extends StatefulWidget {
  // final List<Task> tasks;
  // const listview_widget({
  //   super.key,
  //   required this.tasks,
  // });

  @override
  State<listview_widget> createState() => _listview_widgetState();
}

class _listview_widgetState extends State<listview_widget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Model>(
      builder: (context, task, child) {
        return ListView.builder(
          itemCount: task.tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return task_listtile(
                tasks: task.tasks,
                index: index,
                ischecked: task.tasks[index].isDone,
                taskname: task.tasks[index].task_title,
                onchange: (val) {
                  task.doneChuaneg(task.tasks[index]);
                });
          },
        );
      },
    );
  }
}
