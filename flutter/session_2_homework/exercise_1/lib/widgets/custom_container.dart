import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final String text;
  const CustomContainer({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.41,
      height: MediaQuery.sizeOf(context).height * 0.04,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}
