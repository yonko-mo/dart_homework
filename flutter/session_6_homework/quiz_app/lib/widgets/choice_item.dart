import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/theme/colors.dart';
import 'package:quiz_app/theme/gradients.dart';
import 'package:quiz_app/theme/text_styles.dart';

class ChoiceItem extends StatelessWidget {
  final QuestionModel questionModel;
  final int choiceIndex;
  final bool isSelected;
  final VoidCallback onTap;

  const ChoiceItem({
    super.key,
    required this.questionModel,
    required this.choiceIndex,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: ShapeDecoration(
          gradient: isSelected ? AppGradients.choice : null,
          color: isSelected ? null : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected
                      ? AppColors.primaryColor
                      : const Color(0xFF4A4A6A),
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: 16,
                backgroundColor: isSelected
                    ? AppColors.primaryColor
                    : Colors.white,
                child: isSelected
                    ? const Icon(Icons.check, color: Colors.white, size: 18)
                    : null,
              ),
            ),
            Text(
              questionModel.answers[choiceIndex],
              style: AppTextStyles.medium16.copyWith(
                color: isSelected
                    ? AppColors.primaryColor
                    : const Color(0xFF4A4A6A),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
