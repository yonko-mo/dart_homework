import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/action_buttons.dart';
import 'package:quiz_app/widgets/custom_background_container.dart';
import 'package:quiz_app/widgets/questions_page_view_builder.dart';

class QuestionsView extends StatefulWidget {
  const QuestionsView({super.key});

  @override
  State<QuestionsView> createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {
  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final List<QuestionModel> questions = [
    QuestionModel(
      question: 'How many hours of sleep does a healthy adult need per night?',
      answers: ['7-9 hours', '5-6 hours', '10-12 hours', '4 hours or less'],
    ),
    QuestionModel(
      question:
          'Which of the following are B vitamins? (Select all that apply)',
      answers: [
        'B1 (Thiamine)',
        'B2 (Riboflavin)',
        'B3 (Niacin)',
        'B12 (Cobalamin)',
      ],
      allowMultiple: true,
    ),
    QuestionModel(
      question:
          'How many minutes of moderate exercise per week does WHO recommend?',
      answers: ['150 minutes', '75 minutes', '200 minutes', '100 minutes'],
    ),
    QuestionModel(
      question:
          'Which vitamin is produced by the body when exposed to sunlight?',
      answers: ['Vitamin D', 'Vitamin C', 'Vitamin A', 'Vitamin E'],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QuestionsPageViewBuilder(
                questions: questions,
                pageController: pageController,
              ),
              ActionButtons(
                pageController: pageController,
              ),
              const SizedBox(height: 33.5),
            ],
          ),
        ),
      ),
    );
  }
}
