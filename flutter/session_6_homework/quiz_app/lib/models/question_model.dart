import 'package:quiz_app/constants/assets.dart';

class QuestionModel {
  final String questionImage;
  final String questionNumber;
  final String title;
  final List<String> choices;
  final List<String> correctChoices;
  final bool isSingleChoice;

  QuestionModel({
    required this.title,
    required this.choices,
    required this.correctChoices,
    required this.questionImage,
    required this.questionNumber,
    required this.isSingleChoice,
  });
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is QuestionModel &&
        other.questionNumber == questionNumber &&
        other.title == title &&
        other.choices == choices &&
        other.correctChoices == correctChoices &&
        other.isSingleChoice == isSingleChoice;
  }

  @override
  int get hashCode => questionNumber.hashCode ^ title.hashCode ^ choices.hashCode ^ correctChoices.hashCode ^ isSingleChoice.hashCode;
}

List<QuestionModel> questions() {
  return [
    QuestionModel(
      questionNumber: '1',
      questionImage: Assets.question1,
      title: 'How many hours of sleep does a healthy adult need per night?',
      choices: ['7-9 hours', '5-6 hours', '10-12 hours', '4 hours or less'],
      correctChoices: ['7-9 hours'],
      isSingleChoice: true,
    ),
    QuestionModel(
      questionNumber: '2',
      questionImage: Assets.question2,
      title: 'Which of the following are B vitamins? (Select all that apply)',
      choices: [
        'B1 (Thiamine)',
        'B2 (Riboflavin)',
        'B3 (Niacin)',
        'B12 (Cobalamin)',
      ],
      correctChoices: [
        'B1 (Thiamine)',
        'B2 (Riboflavin)',
        'B3 (Niacin)',
        'B12 (Cobalamin)',
      ],
      isSingleChoice: false,
    ),
    QuestionModel(
      questionNumber: '3',
      questionImage: Assets.question3,
      title:
          'How many minutes of moderate exercise per week does WHO recommend?',
      choices: ['150 minutes', '75 minutes', '200 minutes', '100 minutes'],
      correctChoices: ['150 minutes'],
      isSingleChoice: true,
    ),
    QuestionModel(
      questionNumber: '4',
      questionImage: Assets.question4,
      title: 'Which vitamin is produced by the body when exposed to sunlight?',
      choices: ['Vitamin D', 'Vitamin C', 'Vitamin A', 'Vitamin E'],
      correctChoices: ['Vitamin D'],
      isSingleChoice: true,
    ),
  ];



}
