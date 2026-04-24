import 'package:flutter/material.dart';
import 'package:quiz_app/theme/text_styles.dart';

abstract final class AppTheme {
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: ThemeData.dark().textTheme.apply(
      fontFamily: AppTextStyles.fontFamily,
    ),
  );
}
