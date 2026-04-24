
class QuestionsModel {
  final String question;
  List<String> selectedAnswers = [];
  final bool allowMultiple; // true for vitamins question
  
  QuestionsModel({
    required this.question,
    this.allowMultiple = false,
  });
}
