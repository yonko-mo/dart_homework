import 'package:flutter/material.dart';
import 'package:quiz_app/theme/colors.dart';
import 'package:quiz_app/theme/gradients.dart';
import 'package:quiz_app/theme/text_styles.dart';

class ChoiceItem extends StatelessWidget {
  const ChoiceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: ShapeDecoration(
        gradient: AppGradients.choice,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 16,
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: AppColors.primaryColor,
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: CircleAvatar(backgroundColor: Colors.white),
                ),
              ),
            ],
          ),
          Text(
            'Strongly satisfied',
            style: AppTextStyles.medium16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
