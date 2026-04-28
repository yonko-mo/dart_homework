import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/constants/assets.dart';
import 'package:quiz_app/theme/colors.dart';
import 'package:quiz_app/theme/text_styles.dart';

class SelectedSingleChoiceItem extends StatelessWidget {
  final String choice;
  const SelectedSingleChoiceItem({
    super.key,
    required this.choice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: 
           ShapeDecoration(
              gradient: const LinearGradient(
                begin: Alignment(0.00, 1.00),
                end: Alignment(1.00, 0.17),
                colors: [Color(0xFFB8B2FF), Color(0xFFC6C2F7)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [CircleAvatar(
                  radius: 13,
                  backgroundColor: AppColors.primaryColor,
                  child: SvgPicture.asset(Assets.checkIcon),
                )
              ,
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



