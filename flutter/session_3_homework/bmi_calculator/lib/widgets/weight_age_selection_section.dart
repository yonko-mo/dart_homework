import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:bmi_calculator/widgets/age_item.dart';
import 'package:bmi_calculator/widgets/weight_item.dart';
import 'package:flutter/material.dart';

class WeightAgeSelectionSection extends StatelessWidget {
  final BmiModel bmiModel2;

  const WeightAgeSelectionSection({super.key, required this.bmiModel2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: WeightItem(bmiModel2: bmiModel2)),
        const SizedBox(width: 32),
        Expanded(child: AgeItem(bmiModel2: bmiModel2)),
      ],
    );
  }
}
