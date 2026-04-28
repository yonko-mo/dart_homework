import 'package:quiz_app/models/question_model.dart';

class QuestionAnswer {
  final QuestionModel question;
  final List<String> answers;

  QuestionAnswer({required this.question, required this.answers});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is QuestionAnswer && other.question == question;
  }

  @override
  int get hashCode => question.hashCode;
}
