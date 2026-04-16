import 'package:flutter/material.dart';
import 'package:quiz_app/models/answers_model.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/views/results_view.dart';
import 'package:quiz_app/widgets/back_elevated_button.dart';
import 'package:quiz_app/widgets/gradient_scaffold_widget.dart';
import 'package:quiz_app/widgets/next_elevated_button.dart';
import 'package:quiz_app/widgets/question_item.dart';

class QuestionsView extends StatefulWidget {
  const QuestionsView({super.key});

  @override
  State<QuestionsView> createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {
  int currentQuestionIndex = 0;
  final List<QuestionsModel> questions = [
    QuestionsModel(
      question: 'How many hours of sleep does a healthy adult need per night?',
      answers: [
        AnswersModel(answer: '5-6 hours', isCorrect: false),
        AnswersModel(answer: '7-9 hours', isCorrect: true),
        AnswersModel(answer: '10-12 hours', isCorrect: false),
        AnswersModel(answer: '3-4 hours', isCorrect: false),
      ],
    ),
    QuestionsModel(
      question: 'Which of the following are B vitamins? (Select all that apply)',
      answers: [
        AnswersModel(answer: 'Vitamin B12', isCorrect: true),
        AnswersModel(answer: 'Vitamin B6', isCorrect: true),
        AnswersModel(answer: 'Vitamin C', isCorrect: false),
        AnswersModel(answer: 'Vitamin B1 (Thiamine)', isCorrect: true),
      ],
      allowMultiple: true,
    ),
    QuestionsModel(
      question: 'How many minutes of moderate exercise per week does WHO recommend?',
      answers: [
        AnswersModel(answer: '50 minutes', isCorrect: false),
        AnswersModel(answer: '150 minutes', isCorrect: true),
        AnswersModel(answer: '300 minutes', isCorrect: false),
        AnswersModel(answer: '20 minutes', isCorrect: false),
      ],
    ),
    QuestionsModel(
      question: 'Which vitamin is produced by the body when exposed to sunlight?',
      answers: [
        AnswersModel(answer: 'Vitamin D', isCorrect: true),
        AnswersModel(answer: 'Vitamin A', isCorrect: false),
        AnswersModel(answer: 'Vitamin B12', isCorrect: false),
        AnswersModel(answer: 'Vitamin C', isCorrect: false),
      ],
    ),
  ];

  void _selectAnswer(String answer, bool allowMultiple) {
    setState(() {
      final question = questions[currentQuestionIndex];
      if (allowMultiple) {
        // Toggle selection for multiple answers
        if (question.selectedAnswers.contains(answer)) {
          question.selectedAnswers.remove(answer);
        } else {
          question.selectedAnswers.add(answer);
        }
      } else {
        // Single answer - replace the selection
        if (question.selectedAnswers.contains(answer)) {
          question.selectedAnswers.clear();
        } else {
          question.selectedAnswers.clear();
          question.selectedAnswers.add(answer);
        }
      }
    });
  }

  void _goToPrevious() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
      });
    }
  }

  void _goToNext() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      // Quiz completed - navigate to results
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultsView(
            questions: questions,
            onRetake: _resetQuiz,
          ),
        ),
      );
    }
  }

  void _resetQuiz() {
    Navigator.pop(context);
    setState(() {
      currentQuestionIndex = 0;
      // Clear all selections
      for (var q in questions) {
        q.selectedAnswers.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffoldWidget(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: Column(
            children: [
              QuestionItem(
                questions: questions,
                currentQuestionIndex: currentQuestionIndex,
                onAnswerSelected: _selectAnswer,
              ),
              const Spacer(),
              Row(
                children: [
                  BackElevatedButton(
                    currentQuestionIndex: currentQuestionIndex,
                    questions: questions,
                    onBackPressed: _goToPrevious,
                  ),
                  const Spacer(),
                  NextElevatedButton(
                    onNext: _goToNext,
                    isLastQuestion:
                        currentQuestionIndex == questions.length - 1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
