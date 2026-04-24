import 'package:flutter/material.dart';
import 'package:quiz_app/theme/gradients.dart';

class CustomBackgroundContainer extends StatelessWidget {
  final Widget child;
  const CustomBackgroundContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/pngs/gradient.png'),
          fit: BoxFit.cover,
        ),
        gradient: AppGradients.background,
      ),
      child: SafeArea(bottom: false, child: child),
    );
  }
}
