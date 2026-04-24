import 'package:flutter/material.dart';

abstract final class AppTextStyles {
  static const String fontFamily = 'Gilroy';

  static const TextStyle regular12 = TextStyle(
    fontSize: 12,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle regular16 = TextStyle(
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle medium16 = TextStyle(
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle medium18 = TextStyle(
    fontSize: 18,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle medium24 = TextStyle(
    fontSize: 24,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
  );
}
