import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_manager.dart';
import 'package:quiz_app/widgets/not_selected_choice_item.dart';
import 'package:quiz_app/widgets/selected_multi_choice_item.dart';

class MultiChoiceItem extends StatefulWidget {
  final String choice;
  final QuestionManager questionManager;
  final int questionIndex;
  const MultiChoiceItem({
    super.key,
    required this.choice,
    required this.questionManager,
    required this.questionIndex,
  });

  @override
  State<MultiChoiceItem> createState() => _MultiChoiceItemState();
}

class _MultiChoiceItemState extends State<MultiChoiceItem>
    with AutomaticKeepAliveClientMixin {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });

        if (isSelected) {
          widget.questionManager.addQuestionAnswerforMultiAnswerQuestion(
            widget.questionIndex,
            widget.choice,
          );
        } else {
          widget.questionManager.removeQuestionAnswerChoice(
            widget.questionIndex,
            widget.choice,
          );
        }
      },
      child: isSelected
          ? SelectedMultiChoiceItem(choice: widget.choice)
          : NotSelectedChoiceItem(choice: widget.choice),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
