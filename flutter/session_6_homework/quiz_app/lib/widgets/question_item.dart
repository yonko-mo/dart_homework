import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/theme/text_styles.dart';
import 'package:quiz_app/widgets/choices_list_view.dart';
import 'package:quiz_app/widgets/question_header.dart';

class QuestionItem extends StatelessWidget {
  final QuestionModel questionModel;
  final int currentQuestionIndex;
  const QuestionItem({super.key, required this.questionModel, required this.currentQuestionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionHeader(currentQuestionIndex: currentQuestionIndex),
        const SizedBox(height: 16),
        Text(
          questionModel.question,
          style: AppTextStyles.medium24.copyWith(color: Colors.white),
        ),
        const SizedBox(height: 32),
        Expanded(child: ChoicesListView(questionModel: questionModel)),
      ],
    );
  }
}
