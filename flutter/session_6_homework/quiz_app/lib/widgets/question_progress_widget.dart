import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';

class QuestionProgressWidget extends StatefulWidget {
  final List<QuestionsModel> questions;
  final int currentQuestionIndex;

  const QuestionProgressWidget({
    super.key,
    required this.questions,
    required this.currentQuestionIndex,
  });

  @override
  State<QuestionProgressWidget> createState() => _QuestionProgressWidgetState();
}

class _QuestionProgressWidgetState extends State<QuestionProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xff8e84ff),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Text(
                "Question ${widget.currentQuestionIndex + 1}",
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
