import 'package:bmi_calculator/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class GenderItem extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  final void Function()? onTap;

  const GenderItem({
    super.key,
    required this.onTap,
    required this.color,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomBackgroundContainer(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(icon, color: Colors.white, size: 110),
            Text(
              label,
              style: const TextStyle(color: Color(0xff93969e), fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
