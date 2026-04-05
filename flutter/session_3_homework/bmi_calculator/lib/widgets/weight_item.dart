import 'package:bmi_calculator/widgets/value_changed_item.dart';
import 'package:flutter/material.dart';

class WeightItem extends StatefulWidget {
  const WeightItem({super.key});

  @override
  State<WeightItem> createState() => _WeightItemState();
}

class _WeightItemState extends State<WeightItem> {
  int _weight = 60;

  @override
  Widget build(BuildContext context) {
    return ValueChangedItem(
      label: 'WEIGHT',
      value: _weight,
      onDecrement: () {
        setState(() {
          _weight--;
        });
      },
      onIncrement: () {
        setState(() {
          _weight++;
        });
      },
    );
  }
}
