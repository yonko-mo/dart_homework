import 'package:flutter/material.dart';

class NoTasksSection extends StatelessWidget {
  const NoTasksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(Icons.check_circle, size: 50, color: Color(0xff6f7573)),
        SizedBox(height: 20),
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
