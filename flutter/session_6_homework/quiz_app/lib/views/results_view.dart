import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/gradient_scaffold_widget.dart';

class ResultsView extends StatelessWidget {
  final List<QuestionsModel> questions;
  final VoidCallback onRetake;

  const ResultsView({
    super.key,
    required this.questions,
    required this.onRetake,
  });

  int _calculateScore() {
    int score = 0;
    for (var question in questions) {
      // Get the correct answer(s)
      final correctAnswers = question.answers
          .where((answer) => answer.isCorrect)
          .map((answer) => answer.answer)
          .toList();

      if (correctAnswers.isEmpty) continue;

      if (question.allowMultiple) {
        // Multi-answer: user must select at least the correct answer
        bool hasCorrectAnswer = correctAnswers.any(
          (correctAns) => question.selectedAnswers.contains(correctAns),
        );
        if (hasCorrectAnswer) {
          score++;
        }
      } else {
        // Single-answer: user must select exactly one answer and it must be correct
        if (question.selectedAnswers.length == 1 &&
            question.selectedAnswers.contains(correctAnswers[0])) {
          score++;
        }
      }
    }
    return score;
  }

  @override
  Widget build(BuildContext context) {
    int score = _calculateScore();
    int totalQuestions = questions.length;

    return GradientScaffoldWidget(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Quiz Completed!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xff8e84ff),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const Text(
                    'Your Score',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '$score / $totalQuestions',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff8e84ff),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: onRetake,
              child: const Text(
                'Retake Quiz',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
