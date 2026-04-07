class TaskModel {
  String title;
  DateTime date;
  bool isCompleted;

  TaskModel({
    required this.title,
    required this.date,
    this.isCompleted = false,
  });
}
