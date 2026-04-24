import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/question_item.dart';

class QuestionsPageViewBuilder extends StatelessWidget {
  final List<QuestionModel> questions;
  final PageController pageController;

  const QuestionsPageViewBuilder({
    super.key,
    required this.questions,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return QuestionItem(
            questionModel: questions[index],
            currentQuestionIndex: index,
          );
        },
      ),
    );
  }
}
