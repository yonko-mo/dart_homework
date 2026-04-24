class QuestionModel {
  final String question;
  final List<String> answers;
  List<String> selectedAnswers = [];
  final bool allowMultiple;

  QuestionModel({
    required this.question,
    required this.answers,
    this.allowMultiple = false,
  });
}
