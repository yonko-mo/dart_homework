import 'package:flutter/material.dart';

class AnswerItem extends StatefulWidget {
  final String answer;
  final bool isSelected;
  final VoidCallback onAnswerSelected;

  const AnswerItem({
    super.key,
    required this.answer,
    required this.isSelected,
    required this.onAnswerSelected,
  });

  @override
  State<AnswerItem> createState() => _AnswerItemState();
}

class _AnswerItemState extends State<AnswerItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.onAnswerSelected,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: widget.isSelected ? const Color(0xff8e84ff) : Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: widget.onAnswerSelected,
                  icon: Icon(
                    widget.isSelected
                        ? Icons.check_circle
                        : Icons.circle_outlined,
                    size: 30,
                    color: widget.isSelected
                        ? const Color(0xff2a0061)
                        : const Color(0xff2b0063),
                  ),
                ),
                Text(
                  widget.answer,
                  style: TextStyle(
                    color: widget.isSelected
                        ? Colors.white
                        : const Color(0xFF2B0062),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
