import 'package:flutter/material.dart';
import 'package:quiz_app/theme/colors.dart';
import 'package:quiz_app/theme/text_styles.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onBack;
  final VoidCallback onNext;
  final bool isLastQuestion;
  const ActionButtons({
    super.key,
    required this.onBack,
    required this.onNext,
    this.isLastQuestion = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: onBack,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.transparent,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: AppColors.actionButtonBorder,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            children: [
              const Icon(Icons.arrow_back_ios, color: Colors.white, size: 19),
              const SizedBox(width: 8),
              Text(
                'Back',
                style: AppTextStyles.medium16.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: onNext,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secondaryColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: AppColors.actionButtonBorder,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            children: [
              Text(
                isLastQuestion ? 'Finish' : 'Next',
                style: AppTextStyles.medium16.copyWith(color: Colors.white),
              ),
              const SizedBox(width: 11),
              Icon(
                isLastQuestion ? Icons.check : Icons.arrow_forward_ios,
                color: Colors.white,
                size: 19,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
