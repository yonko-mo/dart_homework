import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/theme/colors.dart';
import 'package:quiz_app/theme/text_styles.dart';

class QuestionHeader extends StatelessWidget {
  final int currentQuestionIndex;
  const QuestionHeader({super.key, required this.currentQuestionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: AppColors.secondaryColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: AppColors.borderViolet),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/svgs/question_${currentQuestionIndex + 1}.svg'),
          const SizedBox(width: 8),
          Text(
            'Question ${currentQuestionIndex + 1}',
            style: AppTextStyles.regular12.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
