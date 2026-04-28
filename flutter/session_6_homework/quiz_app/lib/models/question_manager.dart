import 'package:quiz_app/models/question_answer.dart';
import 'package:quiz_app/models/question_model.dart';

class QuestionManager {
  final List<QuestionModel> questions;

  List<QuestionAnswer> questionsAnswers = [];

  QuestionManager(this.questions);

  int calculateResult() {
    int totalPoints = 0;
    for (int i = 0; i < questionsAnswers.length; i++) {
      if (_listMatch(
        questionsAnswers[i].answers,
        questionsAnswers[i].question.correctChoices,
      )) {
        totalPoints += 10;
      }
    }
    return totalPoints;
  }

  bool _listMatch(List<String> user, List<String> correct) {
    if (user.length != correct.length) {
      return false;
    }
    final a = List<String>.from(user)..sort();
    final b = List<String>.from(correct)..sort();
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) {
        return false;
      }
    }
    return true;
  }

  QuestionAnswer? getQuestionAnswer(QuestionModel questionIndex) {
    QuestionAnswer? questionAnswer;
    for (var element in questionsAnswers) {
      if (element.question == questionIndex) {
        questionAnswer = element;
        break;
      }
    }
    return questionAnswer;
  }

  void addQuestionAnswerforSingleAnswerQuestion(
    int questionIndex,
    String answer,
  ) {
    final questionAnswer = QuestionAnswer(
      question: questions[questionIndex],
      answers: [answer],
    );
    if (questionsAnswers.contains(questionAnswer)) {
      var questionAnswerIndex = questionsAnswers.indexOf(questionAnswer);
      questionsAnswers.remove(questionAnswer);
      questionsAnswers.insert(questionAnswerIndex, questionAnswer);
    } else {
      questionsAnswers.add(
        QuestionAnswer(question: questions[questionIndex], answers: [answer]),
      );
    }
  }

  void addQuestionAnswerforMultiAnswerQuestion(
    int questionIndex,
    String answer,
  ) {
    var question = questions[questionIndex];

    var questionAnswer = getQuestionAnswer(question);
    if (questionAnswer == null) {
      questionsAnswers.add(
        QuestionAnswer(question: question, answers: [answer]),
      );
    } else {
      questionAnswer.answers.add(answer);
    }
  }

  void removeQuestionAnswerChoice(int questionIndex, String choice) {
    final question = questions[questionIndex];
    QuestionAnswer? questionAnswer = getQuestionAnswer(question);
    if (questionAnswer != null) {
      questionAnswer.answers.remove(choice);
    }
  }

  void resetQuiz() {
    questionsAnswers.clear();
  }
}
