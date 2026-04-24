import 'package:flutter/material.dart';
import 'package:quiz_app/theme/colors.dart';

abstract final class AppGradients {
  static const LinearGradient background = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.backgroundGradientStart,
      AppColors.backgroundGradientEnd,
    ],
  );

  static const LinearGradient choice = LinearGradient(
    begin: Alignment(0.00, 1.00),
    end: Alignment(1.00, 0.17),
    colors: [
      AppColors.choiceGradientStart,
      AppColors.choiceGradientEnd,
    ],
  );
}
