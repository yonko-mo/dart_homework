class AnswersModel {
  final String answer;
  final bool isCorrect;
  bool isSelected;

  AnswersModel({required this.answer, required this.isCorrect,this.isSelected = false});
}
