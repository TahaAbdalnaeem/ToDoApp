import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp_provider/Providers/model.dart';


class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController taskname = new TextEditingController();
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          "Add Task",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.indigo[400]),
        ),
        TextFormField(
          controller: taskname,
          autofocus: true, //اول ما تدوس يفتح حقل الادخال
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        Consumer<Model>(
          builder: (BuildContext context, value, Widget? child) {
            return TextButton(
              onPressed: () {
                value.addTask(taskname.text);
                Navigator.pop(context);
              },
              child: const Text("Add"),
              // onPressed:()=> widget.addTask(taskname.text), //Function call back
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.teal[400]),
            );
          },
        )
      ]),
    );
  }
}
