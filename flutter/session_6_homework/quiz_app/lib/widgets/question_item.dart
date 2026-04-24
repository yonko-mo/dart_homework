import 'package:flutter/material.dart';
import 'package:quiz_app/theme/text_styles.dart';
import 'package:quiz_app/widgets/choices_list_view.dart';
import 'package:quiz_app/widgets/question_header.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const QuestionHeader(),
        const SizedBox(height: 16),
        Text(
          'How would you describe \nyour level of satisfaction \nwith the healthcare \nsystem?',
          style: AppTextStyles.medium24.copyWith(color: Colors.white),
        ),
        const SizedBox(height: 32),
        const Expanded(child: ChoicesListView()),
      ],
    );
  }
}
