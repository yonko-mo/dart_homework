import 'package:flutter/material.dart';
import 'package:task_management_app/models/task_model.dart';
import 'package:task_management_app/widgets/task_widget.dart';

class TasksListViewWidget extends StatefulWidget {
  final List<TaskModel> tasks;
  final void Function() updateTasks;

  const TasksListViewWidget({
    super.key,
    required this.tasks,
    required this.updateTasks,
  });

  @override
  State<TasksListViewWidget> createState() => _TasksListViewWidgetState();
}

class _TasksListViewWidgetState extends State<TasksListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskWidget(
          task: widget.tasks[index],
          tasks: widget.tasks,
          onDelete: () {
            widget.tasks.remove(widget.tasks[index]);
            if (widget.tasks.isEmpty) {
              widget.updateTasks();
            } else {
              setState(() {});
            }
          },
        );
      },
    );
  }
}
