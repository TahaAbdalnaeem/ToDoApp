import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_provider/Providers/model.dart';
import 'package:todoapp_provider/model/Task.dart';

class task_listtile extends StatelessWidget {
  task_listtile({
    super.key,
    required this.tasks,
    required this.index,
    required this.ischecked,
    required this.taskname,
    required this.onchange,
  });
  final List<Task> tasks;
  final int index;
  final bool ischecked;
  final String taskname;
  final void Function(bool? val) onchange;

  @override
  Widget build(BuildContext context) {
    return Consumer<Model>(
      builder: (BuildContext context, value, Widget? child) {
        return ListTile(
            onLongPress: () {
              value.deleteTask(value.tasks[index]);
            },
            title: Text(
              "$taskname",
              style: TextStyle(
                  decoration: ischecked ? TextDecoration.lineThrough : null),
            ),
            trailing: Checkbox(
              activeColor: Colors.teal[400],
              value: ischecked,
              onChanged: onchange,
            ));
      },
    );
  }
}
