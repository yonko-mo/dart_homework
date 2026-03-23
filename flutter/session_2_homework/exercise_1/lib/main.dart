import 'package:exercise_1/widgets/custom_container.dart';
import 'package:exercise_1/widgets/features_section.dart';
import 'package:exercise_1/widgets/quick_stats_section.dart';
import 'package:exercise_1/widgets/welcome_section.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Exercise1());
}

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                WelcomeSection(),
                SizedBox(height: 20),
                QuickStatsSection(),
                SizedBox(height: 25),
                FeaturesSection(),
                Spacer(flex: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomContainer(color: Color(0xff2196f3), text: 'Settings'),
                    CustomContainer(color: Color(0xffff9700), text: 'Profile'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
