import 'package:flutter/material.dart';

class NextElevatedButton extends StatefulWidget {
  final VoidCallback onNext;
  final bool isLastQuestion;

  const NextElevatedButton({
    super.key,
    required this.onNext,
    this.isLastQuestion = false,
  });

  @override
  State<NextElevatedButton> createState() => _NextElevatedButtonState();
}

class _NextElevatedButtonState extends State<NextElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff8e84ff),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: widget.onNext,
      child: Row(
        children: [
          Text(
            widget.isLastQuestion ? 'Finish' : 'Next',
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(width: 8),
          Icon(
            widget.isLastQuestion ? Icons.check : Icons.arrow_forward_ios_outlined,
            size: 19,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
