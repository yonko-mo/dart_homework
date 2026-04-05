import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:bmi_calculator/screens/bmi_result_page.dart';
import 'package:bmi_calculator/widgets/calculate_button.dart';
import 'package:bmi_calculator/widgets/gender_selection_section.dart';
import 'package:bmi_calculator/widgets/height_selection_section.dart';
import 'package:bmi_calculator/widgets/weight_age_selection_section.dart';
import 'package:flutter/material.dart';

class BmiCalculatorPage extends StatelessWidget {
  double height = 174;
  int weight = 60;
  int age = 29;

  BmiCalculatorPage({super.key});

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Expanded(child: GenderSelectionSection()),
              const SizedBox(height: 16),
              const Expanded(child: HeightSelectionSection()),
              const SizedBox(height: 16),
              const Expanded(child: WeightAgeSelectionSection()),
              const SizedBox(height: 16),
              CalculateButton(
                height: height,
                weight: weight,
                age: age,

                onCalculate: () {
                  final result = BmiCalculator.calculate(
                    height: height,
                    weight: weight,
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BmiResultPage(
                        bmi: result.bmi,
                        status: result.status,
                        height: height,
                        weight: weight,
                        age: age,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
