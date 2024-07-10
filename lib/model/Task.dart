class Task {
  final String task_title;
  bool isDone;

  Task({required this.task_title, this.isDone = false});
  void doneChaneg() {
    isDone = !isDone;
  }
  

}

