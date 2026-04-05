import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final double height;
  final int weight;
  final int age;
  final VoidCallback onCalculate;

  const CalculateButton({
    super.key,
    required this.height,
    required this.weight,
    required this.age,
    required this.onCalculate,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffec0d54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onCalculate,
        child: const Text(
          'CALCULATE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
