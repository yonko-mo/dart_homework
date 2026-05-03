import 'package:flutter/material.dart';

class NoWeatherWidget extends StatelessWidget {
  const NoWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'there is no weather 😔 start',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          Text(
            'searching now 🔍',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
