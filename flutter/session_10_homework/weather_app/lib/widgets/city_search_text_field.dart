import 'dart:developer';

import 'package:flutter/material.dart';

class CitySearchTextField extends StatelessWidget {
  const CitySearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: TextField(
          onSubmitted: (value) {
            log(value);
          },
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 30,
            ),
            border: OutlineInputBorder(),
            labelText: 'Search',
            hintText: 'Enter City Name',
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
