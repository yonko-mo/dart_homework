import 'package:flutter/material.dart';

class EmptyTasksWidget extends StatelessWidget {
  const EmptyTasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.task_alt, size: 100, color: Color(0xffa9cdc9)),
        SizedBox(height: 16),
        Text(
          'No tasks yet!',
          style: TextStyle(color: Color(0xff6f7573), fontSize: 24),
        ),
        SizedBox(height: 10),
        Text(
          'Add a task to get started.',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xffa6acaa),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
