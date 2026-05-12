import 'package:flutter/material.dart';

AppBar buildAppBar({
  List<Widget>? actions,
  required String title,
  Color? color,
}) {
  return AppBar(
    backgroundColor: color,
    foregroundColor: Colors.white,
    title: const Text('Weather App'),
    actions: actions,
  );
}
