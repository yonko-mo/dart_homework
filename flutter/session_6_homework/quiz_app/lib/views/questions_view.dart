import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/action_buttons.dart';
import 'package:quiz_app/widgets/custom_background_container.dart';
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
    ),
    QuestionsModel(
      question:
          'Which of the following are B vitamins? (Select all that apply)',

      allowMultiple: true,
    ),
    QuestionsModel(
      question:
          'How many minutes of moderate exercise per week does WHO recommend?',
    ),
    QuestionsModel(
      question:
          'Which vitamin is produced by the body when exposed to sunlight?',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomBackgroundContainer(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: QuestionItem()),
              ActionButtons(),
              SizedBox(height: 33.5),
            ],
          ),
        ),
      ),
    );
  }
}


