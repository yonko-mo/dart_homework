import 'package:flutter/material.dart';

class CustomCircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomCircleIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff4b4e5f),
        shape: const CircleBorder(),
        padding: const EdgeInsets.only(
          top: 16,
          left: 12,
          right: 12,
          bottom: 16,
        ),
      ),
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.white, size: 40),
    );
  }
}
