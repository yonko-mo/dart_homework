import 'package:flutter/material.dart';
import 'package:quiz_app/theme/colors.dart';
import 'package:quiz_app/theme/text_styles.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
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
          onPressed: () {},
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
                'Next',
                style: AppTextStyles.medium16.copyWith(color: Colors.white),
              ),
              const SizedBox(width: 11),
              const Icon(
                Icons.arrow_forward_ios,
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
