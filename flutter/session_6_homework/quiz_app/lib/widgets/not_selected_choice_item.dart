import 'package:flutter/material.dart';
import 'package:quiz_app/theme/colors.dart';
import 'package:quiz_app/theme/text_styles.dart';

class NotSelectedChoiceItem extends StatelessWidget {
  final String choice;
  const NotSelectedChoiceItem({super.key, required this.choice});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          const CircleAvatar(
            radius: 13,
            backgroundColor: AppColors.primaryColor,
            child: Padding(
              padding: EdgeInsets.all(1.0),
              child: CircleAvatar(backgroundColor: AppColors.mainWhite),
            ),
          ),
          Text(
            choice,
            style: AppTextStyles.medium16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
