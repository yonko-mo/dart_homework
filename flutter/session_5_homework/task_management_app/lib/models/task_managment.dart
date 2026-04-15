import 'package:task_management_app/models/task_model.dart';

class TaskManagment {
  List<TaskModel> tasks = [];
  void addTask(TaskModel task) {
    tasks.add(task);
  }
  void removeTask(TaskModel task) {
    tasks.remove(task);
  }
}