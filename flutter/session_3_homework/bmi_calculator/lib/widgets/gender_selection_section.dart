import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:flutter/material.dart';
import 'gender_item.dart';

class GenderSelectionSection extends StatefulWidget {
  final BmiModel bmiModel2;
  const GenderSelectionSection({super.key, required this.bmiModel2});

  @override
  State<GenderSelectionSection> createState() => GenderSelectionSectionState();
}

class GenderSelectionSectionState extends State<GenderSelectionSection> {
  final Color _selectedColor = const Color(0xff090b24);
  final Color _unselectedColor = const Color(0xff17172f);

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Expanded(
          child: GenderItem(
            onTap: () {
              setState(() {
                widget.bmiModel2.gender = Gender.male;
              });
            },
            color: widget.bmiModel2.gender == Gender.male ? _selectedColor : _unselectedColor,
            icon: Icons.male,
            label: 'MALE',
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: GenderItem(
            onTap: () {
              setState(() {
                widget.bmiModel2.gender = Gender.female;
              });
            },
            color: widget.bmiModel2.gender == Gender.female ? _selectedColor : _unselectedColor,
            icon: Icons.female,
            label: 'FEMALE',
          ),
        ),
      ],
    );
  }
}

enum Gender { male, female, other }
