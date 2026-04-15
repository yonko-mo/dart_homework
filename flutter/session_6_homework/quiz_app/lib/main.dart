import 'package:flutter/material.dart';
import 'package:quiz_app/views/quiz_app_view.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: QuizAppView());
  }
}
