import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:bmi_calculator/widgets/value_changed_item.dart';
import 'package:flutter/material.dart';

class WeightItem extends StatefulWidget {
  final BmiModel bmiModel2;
  const WeightItem({super.key, required this.bmiModel2});

  @override
  State<WeightItem> createState() => WeightItemState();
}

class WeightItemState extends State<WeightItem> {
  @override
  Widget build(BuildContext context) {
    return ValueChangedItem(
      label: 'WEIGHT',
      value: widget.bmiModel2.weight,
      onDecrement: () {
        setState(() {
          widget.bmiModel2.weight--;
        });
      },
      onIncrement: () {
        setState(() {
          widget.bmiModel2.weight++;
        });
      },
    );
  }
}
