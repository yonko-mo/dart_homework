import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final BmiModel bmiModel2;

  const BmiResultScreen({super.key, required this.bmiModel2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff04061d),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Bmi is ${bmiModel2.calculateBmi().toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
