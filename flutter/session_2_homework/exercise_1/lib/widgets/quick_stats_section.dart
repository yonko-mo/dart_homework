import 'package:exercise_1/widgets/quick_stat_item.dart';
import 'package:flutter/material.dart';

class QuickStatsSection extends StatelessWidget {
  const QuickStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text(
              'Quick Stats',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            QuickStatItem(
              icon: Icons.group,
              iconColor: Color(0xff653abb),
              value: '1,234',
              statName: 'Users',
            ),
            QuickStatItem(
              icon: Icons.star,
              iconColor: Color(0xfff89300),
              value: '4.8',
              statName: 'Rating',
            ),
            QuickStatItem(
              icon: Icons.trending_up,
              iconColor: Color(0xff3093cd),
              value: '98%',
              statName: 'Success',
            ),
          ],
        ),
      ],
    );
  }
}
