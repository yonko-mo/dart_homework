import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/choice_item.dart';

class ChoicesListView extends StatefulWidget {
  final QuestionModel questionModel;
  const ChoicesListView({super.key, required this.questionModel});

  @override
  State<ChoicesListView> createState() => _ChoicesListViewState();
}

class _ChoicesListViewState extends State<ChoicesListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.questionModel.answers.length,
      itemBuilder: (context, index) {
        final answer = widget.questionModel.answers[index];
        
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ChoiceItem(
            questionModel: widget.questionModel,
            choiceIndex: index,
            isSelected: widget.questionModel.selectedAnswers.contains(answer),
            onTap: () {
              setState(() {
                selectAnswer(answer);
              });
            },
          ),
        );
      },
    );
  }

  void selectAnswer(String answer) {
    if (widget.questionModel.allowMultiple) {
      if (widget.questionModel.selectedAnswers.contains(answer)) {
        widget.questionModel.selectedAnswers.remove(answer);
      } else {
        widget.questionModel.selectedAnswers.add(answer);
      }
    } else {
      if (widget.questionModel.selectedAnswers.contains(answer)) {
        widget.questionModel.selectedAnswers.clear();
      } else {
        widget.questionModel.selectedAnswers.clear();
        widget.questionModel.selectedAnswers.add(answer);
      }
    }
  }
}
