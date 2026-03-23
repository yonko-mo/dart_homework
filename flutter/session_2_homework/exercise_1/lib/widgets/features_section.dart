import 'package:exercise_1/widgets/feature_item.dart';
import 'package:flutter/material.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text(
              'Features',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ],
        ),
        SizedBox(height: 8),
        FeatureItem(
          leadingContainerColor: Color(0xffefecf5),
          icon: Icons.speed,
          iconColor: Color(0xff523679),
          title: 'Fast Performance',
          subTitle: 'Lightning fast app performance',
        ),
        FeatureItem(
          leadingContainerColor: Color(0xffe8f5fe),
          icon: Icons.security,
          iconColor: Color(0xff2399f3),
          title: 'Secure',
          subTitle: 'Your data is safe with us',
        ),
        FeatureItem(
          leadingContainerColor: Color(0xfffdf6e6),
          icon: Icons.palette,
          iconColor: Color(0xffff940d),
          title: 'Beautiful UI',
          subTitle: 'Modern and clean',
        ),
      ],
    );
  }
}
