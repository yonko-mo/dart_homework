import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_manager.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/views/results_view.dart';
import 'package:quiz_app/widgets/action_buttons.dart';
import 'package:quiz_app/widgets/custom_background_container.dart';
import 'package:quiz_app/widgets/question_item.dart';

class QuestionsView extends StatefulWidget {
  const QuestionsView({super.key});

  @override
  State<QuestionsView> createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {
  int pageIndex = 0;
  late QuestionManager questionManager;
  late final PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    questionManager = QuestionManager(questions());
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      pageIndex = index;
                    });
                  },
                  controller: pageController,
                  itemCount: questionManager.questions.length,
                  itemBuilder: (context, index) {
                    return QuestionItem(
                      questionManager: questionManager,
                      questionIndex: index,
                    );
                  },
                ),
              ),
              ActionButtons(
                isLastQuestion:
                    pageIndex == questionManager.questions.length - 1,
                onBack: () {
                  pageController.previousPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                },
                onNext: () {
                  if (pageIndex == questionManager.questions.length - 1) {
                    Navigator.of(context)
                        .push(
                          MaterialPageRoute(
                            builder: (context) =>
                                ResultsView(questionManager: questionManager),
                          ),
                        )
                        .then((result) {
                          if (result == true) {
                            setState(() {
                              pageIndex = 0;
                            });
                            pageController.jumpToPage(0);
                          }
                        });
                  } else {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
              const SizedBox(height: 33.5),
            ],
          ),
        ),
      ),
    );
  }
}
