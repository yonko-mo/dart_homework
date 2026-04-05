import 'package:bmi_calculator/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';
import 'custom_circle_icon_button.dart';

class ValueChangedItem extends StatelessWidget {
  const ValueChangedItem({
    super.key,
    required this.label,
    required this.value,
    required this.onDecrement,
    required this.onIncrement,
  });

  final String label;
  final int value;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(color: Color(0xff93969e), fontSize: 20),
          ),
          Text(
            '${value.round()}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 55,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCircleIconButton(
                icon: Icons.remove,
                onPressed: onDecrement,
              ),
              const SizedBox(width: 12),
              CustomCircleIconButton(icon: Icons.add, onPressed: onIncrement),
            ],
          ),
        ],
      ),
    );
  }
}
