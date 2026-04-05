import 'package:flutter/material.dart';
import 'gender_item.dart';

class GenderSelectionSection extends StatefulWidget {
  const GenderSelectionSection({super.key});

  @override
  State<GenderSelectionSection> createState() => _GenderSelectionSectionState();
}

class _GenderSelectionSectionState extends State<GenderSelectionSection> {
  final Color _selectedColor = const Color(0xff090b24);
  final Color _unselectedColor = const Color(0xff17172f);

  bool _isMaleSelected = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GenderItem(
            onTap: () {
              setState(() {
                _isMaleSelected = true;
              });
            },
            color: _isMaleSelected ? _selectedColor : _unselectedColor,
            icon: Icons.male,
            label: 'MALE',
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: GenderItem(
            onTap: () {
              setState(() {
                _isMaleSelected = false;
              });
            },
            color: !_isMaleSelected ? _selectedColor : _unselectedColor,
            icon: Icons.female,
            label: 'FEMALE',
          ),
        ),
      ],
    );
  }
}
