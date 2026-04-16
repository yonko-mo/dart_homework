import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';

class BackElevatedButton extends StatefulWidget {
  final List<QuestionsModel> questions;
  final int currentQuestionIndex;
  final VoidCallback onBackPressed;

  const BackElevatedButton({
    super.key,
    required this.currentQuestionIndex,
    required this.questions,
    required this.onBackPressed,
  });

  @override
  State<BackElevatedButton> createState() => _BackElevatedButtonState();
}

class _BackElevatedButtonState extends State<BackElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: Color(0xff8e84ff), width: 1),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: (){
        if (widget.currentQuestionIndex > 0) {
          widget.onBackPressed();
        }
      },
      child: const Row(
        children: [
          Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 19,
            color: Colors.white,
          ),
          SizedBox(width: 8),
          Text('Back', style: TextStyle(fontSize: 16, color: Colors.white)),
        ],
      ),
    );
  }
}
