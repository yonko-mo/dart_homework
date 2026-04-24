import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/choice_item.dart';

class ChoicesListView extends StatelessWidget {
  const ChoicesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: ChoiceItem(),
        );
      },
    );
  }
}
