import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/answer_item.dart';
import 'package:quiz_app/widgets/question_progress_widget.dart';

class QuestionItem extends StatefulWidget {
  final List<QuestionsModel> questions;
  final int currentQuestionIndex;
  final Function(String, bool) onAnswerSelected; // Added allowMultiple param

  const QuestionItem({
    super.key,
    required this.questions,
    required this.currentQuestionIndex,
    required this.onAnswerSelected,
  });

  @override
  State<QuestionItem> createState() => _QuestionItemState();
}

class _QuestionItemState extends State<QuestionItem> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.questions[widget.currentQuestionIndex];

    return Column(
      children: [
        QuestionProgressWidget(
          questions: widget.questions,
          currentQuestionIndex: widget.currentQuestionIndex,
        ),
        const SizedBox(height: 16),
        Text(
          currentQuestion.question,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(height: 16),
        for (var answer in currentQuestion.answers)
          AnswerItem(
            answer: answer.answer,
            isSelected: currentQuestion.selectedAnswers.contains(answer.answer),
            onAnswerSelected: () {
              widget.onAnswerSelected(answer.answer, currentQuestion.allowMultiple);
            },
          ),
      ],
    );
  }
}
