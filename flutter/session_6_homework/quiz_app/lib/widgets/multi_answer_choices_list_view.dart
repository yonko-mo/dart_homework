import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_manager.dart';
import 'package:quiz_app/widgets/multi_choice_item.dart';

class MultiAnswerChoicesListView extends StatelessWidget {
  final int questionIndex;
  final QuestionManager questionManager;
  const  MultiAnswerChoicesListView({super.key, required this.questionManager, required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: questionManager.questions[questionIndex].choices.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: MultiChoiceItem(choice: questionManager.questions[questionIndex].choices[index], questionManager: questionManager, questionIndex: questionIndex),
        );
      },
    );
  }
}
