import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  final double? width;
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.color,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: color ?? const Color(0xff17172f),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
