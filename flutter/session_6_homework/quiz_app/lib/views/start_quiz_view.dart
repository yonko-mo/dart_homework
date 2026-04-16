import 'package:flutter/material.dart';
import 'package:quiz_app/views/questions_view.dart';
import 'package:quiz_app/widgets/gradient_scaffold_widget.dart';

class StartQuizView extends StatelessWidget {
  const StartQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffoldWidget(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Good morning,',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'New topic is waiting',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 47),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuestionsView(),
                    ),
                  );
                },
                child: const Text(
                  'Start Quiz',
                  style: TextStyle(fontSize: 18, color: Color(0xff2B0062)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
