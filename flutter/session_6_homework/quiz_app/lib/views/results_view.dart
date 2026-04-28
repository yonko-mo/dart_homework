import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_manager.dart';
import 'package:quiz_app/theme/colors.dart';
import 'package:quiz_app/theme/text_styles.dart';
import 'package:quiz_app/widgets/custom_background_container.dart';

class ResultsView extends StatelessWidget {
  final QuestionManager questionManager;

  const ResultsView({super.key, required this.questionManager});

  bool _isAnswerCorrect(int index) {
    final questionAnswer = questionManager.questionsAnswers[index];
    final userAnswers = questionAnswer.answers;
    final correctAnswers = questionAnswer.question.correctChoices;

    if (userAnswers.length != correctAnswers.length) {
      return false;
    }

    final a = List<String>.from(userAnswers)..sort();
    final b = List<String>.from(correctAnswers)..sort();

    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) {
        return false;
      }
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    final totalScore = questionManager.calculateResult();
    final totalQuestions = questionManager.questionsAnswers.length;

    return Scaffold(
      body: CustomBackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              // Score Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.borderViolet),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text(
                      'Quiz Completed!',
                      style: AppTextStyles.medium24.copyWith(
                        color: AppColors.mainWhite,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Your Score',
                      style: AppTextStyles.medium16.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '$totalScore / ${totalQuestions * 10}',
                      style: AppTextStyles.medium24.copyWith(
                        color: AppColors.mainWhite,
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${(totalScore ~/ (totalQuestions > 0 ? totalQuestions : 1)).toString()}% Correct',
                      style: AppTextStyles.regular16.copyWith(
                        color: AppColors.borderViolet,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // Results List
              Expanded(
                child: ListView.builder(
                  itemCount: questionManager.questionsAnswers.length,
                  itemBuilder: (context, index) {
                    final questionAnswer =
                        questionManager.questionsAnswers[index];
                    final question = questionAnswer.question;
                    final isCorrect = _isAnswerCorrect(index);

                    return Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isCorrect
                              ? const Color(0xFF4CAF50)
                              : const Color(0xFFF44336),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Question Number and Status
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Question ${question.questionNumber}',
                                style: AppTextStyles.medium16.copyWith(
                                  color: AppColors.mainWhite,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: isCorrect
                                      ? const Color(0xFF4CAF50)
                                      : const Color(0xFFF44336),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  isCorrect ? Icons.check : Icons.close,
                                  color: AppColors.mainWhite,
                                  size: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          // Question Title
                          Text(
                            question.title,
                            style: AppTextStyles.medium18.copyWith(
                              color: AppColors.mainWhite,
                            ),
                          ),
                          const SizedBox(height: 16),
                          // User Answer
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color(0xFF2A2548),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Your Answer:',
                                  style: AppTextStyles.regular12.copyWith(
                                    color: AppColors.borderViolet,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  questionAnswer.answers.join(', '),
                                  style: AppTextStyles.regular16.copyWith(
                                    color: isCorrect
                                        ? const Color(0xFF4CAF50)
                                        : const Color(0xFFF44336),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          // Correct Answer
                          if (!isCorrect)
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: const Color(0xFF2A2548),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Correct Answer:',
                                    style: AppTextStyles.regular12.copyWith(
                                      color: AppColors.borderViolet,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    question.correctChoices.join(', '),
                                    style: AppTextStyles.regular16.copyWith(
                                      color: const Color(0xFF4CAF50),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              // Restart Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    questionManager.resetQuiz();
                    Navigator.of(context).pop(true);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Retake Quiz',
                    style: AppTextStyles.medium16.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
