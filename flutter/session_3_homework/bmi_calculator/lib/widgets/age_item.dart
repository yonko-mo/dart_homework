import 'package:bmi_calculator/widgets/value_changed_item.dart';
import 'package:flutter/material.dart';

class AgeItem extends StatefulWidget {
  const AgeItem({super.key});

  @override
  State<AgeItem> createState() => _AgeItemState();
}

class _AgeItemState extends State<AgeItem> {
  int _age = 29;
  @override
  Widget build(BuildContext context) {
    return ValueChangedItem(
      label: 'AGE',
      value: _age,
      onDecrement: () {
        setState(() {
          _age--;
        });
      },
      onIncrement: () {
        setState(() {
          _age++;
        });
      },
    );
  }
}
