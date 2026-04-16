import 'package:flutter/material.dart';

class GradientScaffoldWidget extends StatelessWidget {
  final Widget body;
  const GradientScaffoldWidget({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0F172A), Color(0xFF6D5BA6), Color(0xFF3B2F5B)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(backgroundColor: Colors.transparent, body: body),
    );
  }
}
