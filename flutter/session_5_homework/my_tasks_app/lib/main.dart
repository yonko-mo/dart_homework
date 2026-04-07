import 'package:flutter/material.dart';
import 'package:my_tasks_app/views/my_tasks_view.dart';

void main() {
  runApp(const MyTasksApp());
}

class MyTasksApp extends StatelessWidget {
  const MyTasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTasksView(),
    );
  }
}
