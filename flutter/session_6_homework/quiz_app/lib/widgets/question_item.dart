import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_manager.dart';
import 'package:quiz_app/theme/text_styles.dart';
import 'package:quiz_app/widgets/single_answer_choices_list_view.dart';
import 'package:quiz_app/widgets/multi_answer_choices_list_view.dart';
import 'package:quiz_app/widgets/question_header.dart';

class QuestionItem extends StatelessWidget {
  final QuestionManager questionManager;
  final int questionIndex;
  const QuestionItem({
    super.key,
    required this.questionManager,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionHeader(question: questionManager.questions[questionIndex]),
        const SizedBox(height: 16),
        Text(
          questionManager.questions[questionIndex].title,
          style: AppTextStyles.medium24.copyWith(color: Colors.white),
        ),
        const SizedBox(height: 32),
        Expanded(
          child: questionManager.questions[questionIndex].isSingleChoice
              ? SingleAnswerChoicesListView(
                  questionManager: questionManager,
                  questionIndex: questionIndex,
                )
              : MultiAnswerChoicesListView(
                  questionIndex: questionIndex,
                  questionManager: questionManager,
                ),
        ),
      ],
    );
  }
}
