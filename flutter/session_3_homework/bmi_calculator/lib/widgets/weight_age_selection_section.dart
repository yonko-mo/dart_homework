import 'package:bmi_calculator/widgets/age_item.dart';
import 'package:bmi_calculator/widgets/weight_item.dart';
import 'package:flutter/material.dart';

class WeightAgeSelectionSection extends StatelessWidget {
  const WeightAgeSelectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: WeightItem()),
        SizedBox(width: 32),
        Expanded(child: AgeItem()),
      ],
    );
  }
}
