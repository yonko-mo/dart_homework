import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_manager.dart';
import 'package:quiz_app/widgets/not_selected_choice_item.dart';
import 'package:quiz_app/widgets/selected_single_choice_item.dart';

class SingleAnswerChoicesListView extends StatefulWidget {
  final QuestionManager questionManager;
  final int questionIndex;
  const SingleAnswerChoicesListView({
    super.key,
    required this.questionManager,
    required this.questionIndex,
  });

  @override
  State<SingleAnswerChoicesListView> createState() =>
      _SingleAnswerChoicesListViewState();
}

class _SingleAnswerChoicesListViewState
    extends State<SingleAnswerChoicesListView>
    with AutomaticKeepAliveClientMixin {
  int selectedChoiceIndex = -1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemCount:
          widget.questionManager.questions[widget.questionIndex].choices.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedChoiceIndex = index;
            });
            widget.questionManager.addQuestionAnswerforSingleAnswerQuestion(
              widget.questionIndex,
              widget
                  .questionManager
                  .questions[widget.questionIndex]
                  .choices[selectedChoiceIndex],
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: selectedChoiceIndex == index
                ? SelectedSingleChoiceItem(
                    choice: widget
                        .questionManager
                        .questions[widget.questionIndex]
                        .choices[index],
                  )
                : NotSelectedChoiceItem(
                    choice: widget
                        .questionManager
                        .questions[widget.questionIndex]
                        .choices[index],
                  ),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
