import 'package:flutter/material.dart';
import 'package:todoapp_provider/model/Task.dart';

class Model extends ChangeNotifier {
  bool isDone = false;
  List<Task> tasks = [
    Task(task_title: "Go to SHopping"),
    Task(task_title: "Go to Gym"),
    Task(task_title: "Go to Swimming"),
  ];
  void addTask(String name) {
    tasks.add(Task(task_title: name));
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

  void doneChuaneg(Task task) {
    task.doneChaneg();
    notifyListeners();
  }
}
