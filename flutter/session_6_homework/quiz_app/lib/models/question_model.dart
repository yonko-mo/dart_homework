import 'package:quiz_app/models/answers_model.dart';

class QuestionsModel {
  final String question;
  List<AnswersModel> answers = [];
  List<String> selectedAnswers = []; // Can be 0, 1, or multiple
  final bool allowMultiple; // true for vitamins question
  
  QuestionsModel({
    required this.question,
    required this.answers,
    this.allowMultiple = false,
  });
}
