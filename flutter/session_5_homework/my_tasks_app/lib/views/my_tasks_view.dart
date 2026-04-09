import 'package:flutter/material.dart';
import 'package:my_tasks_app/models/task_model.dart';
import 'package:my_tasks_app/widgets/no_tasks_section.dart';
import 'package:my_tasks_app/widgets/task_card.dart';
import 'package:my_tasks_app/widgets/task_input_field.dart';

class MyTasksView extends StatefulWidget {
  const MyTasksView({super.key});

  @override
  State<MyTasksView> createState() => _MyTasksViewState();
}

class _MyTasksViewState extends State<MyTasksView> {
  final TextEditingController controller = TextEditingController();
  final List<TaskModel> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff9ef2e3),
        title: const Text(
          'My Tasks',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: tasks.isEmpty
                ? const Center(child: NoTasksSection())
                : ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      final task = tasks[index];
                      return TaskCard(
                        task: task,
                        onToggleComplete: () {
                          setState(() {
                            task.isCompleted = !task.isCompleted;
                          });
                        },
                        onDelete: () {
                          setState(() {
                            tasks.removeAt(index);
                          });
                        },
                      );
                    },
                  ),
          ),
          TaskInputField(
            controller: controller,
            onAddTask: () {
              if (controller.text.trim().isEmpty) return;
              setState(() {
                tasks.add(
                  TaskModel(title: controller.text, date: DateTime.now()),
                );
              });

              controller.clear();
            },
          ),
        ],
      ),
    );
  }
}
