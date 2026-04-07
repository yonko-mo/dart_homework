import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:bmi_calculator/widgets/value_changed_item.dart';
import 'package:flutter/material.dart';

class AgeItem extends StatefulWidget {
  final BmiModel bmiModel2;
  const AgeItem({super.key,required this.bmiModel2});

  @override
  State<AgeItem> createState() => AgeItemState();
}

class AgeItemState extends State<AgeItem> {


  @override
  Widget build(BuildContext context) {
    return ValueChangedItem(
      label: 'AGE',
      value: widget.bmiModel2.age,
      onDecrement: () {
        setState(() {
          widget.bmiModel2.age--;
        });
      },
      onIncrement: () {
        setState(() {
          widget.bmiModel2.age++;
        });
      },
    );
  }
}
