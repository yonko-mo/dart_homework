import 'package:flutter/material.dart';
import 'package:my_tasks_app/models/task_model.dart';

class TaskCard extends StatelessWidget {
  final TaskModel task;
  final VoidCallback onToggleComplete;
  final VoidCallback onDelete;

  const TaskCard({
    super.key,
    required this.task,
    required this.onToggleComplete,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: Colors.black.withValues(alpha: 1),
      color: const Color(0xffeff5f3),
      child: ListTile(
        leading: IconButton(
          onPressed: onToggleComplete,
          icon: Icon(
            task.isCompleted ? Icons.check_box : Icons.check_box_outline_blank,
            color: const Color(0xff016c61),
          ),
        ),
        title: Text(
          task.title,
          style: TextStyle(
            color: task.isCompleted
                ? const Color(0xff6f7573)
                : const Color(0xff1b1e1e),
            decoration: task.isCompleted
                ? TextDecoration.lineThrough
                : TextDecoration.none,
            decorationThickness: 2,
            fontWeight: task.isCompleted ? FontWeight.normal : FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          'Created: ${task.date.day}/${task.date.month}/${task.date.year}',
        ),
        trailing: IconButton(
          onPressed: onDelete,
          icon: const Icon(Icons.delete_outline, color: Colors.red),
        ),
      ),
    );
  }
}
