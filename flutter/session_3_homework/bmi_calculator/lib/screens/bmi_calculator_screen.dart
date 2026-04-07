import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:bmi_calculator/screens/bmi_result_screen.dart';
import 'package:bmi_calculator/widgets/calculate_button.dart';
import 'package:bmi_calculator/widgets/gender_selection_section.dart';
import 'package:bmi_calculator/widgets/height_selection_section.dart';
import 'package:bmi_calculator/widgets/weight_age_selection_section.dart';
import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatelessWidget {
  BmiCalculatorScreen({super.key});
  final BmiModel bmiModel = BmiModel(
    gender: Gender.other,
    height: 174,
    weight: 60,
    age: 29,
  );

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
              Expanded(child: GenderSelectionSection(bmiModel2: bmiModel)),
              const SizedBox(height: 16),
              Expanded(child: HeightSelectionSection(bmiModel2: bmiModel)),
              const SizedBox(height: 16),
              Expanded(
                child: WeightAgeSelectionSection(
                  bmiModel2: bmiModel,
                ),
              ),
              const SizedBox(height: 16),
              CalculateButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BmiResultScreen(bmiModel2: bmiModel,),
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
