import 'package:flutter/material.dart';

class WeatherTheme {
  static MaterialColor getThemeColor(String? day) {
    if (day == null) return Colors.blue;

    final condition = day.toLowerCase();

    if (condition.contains('sunny') || condition.contains('clear')) {
      return Colors.orange;
    } else if (condition.contains('thunder')) {
      return Colors.deepPurple;
    } else if (condition.contains('snow') ||
        condition.contains('blizzard') ||
        condition.contains('blowing')) {
      return Colors.lightBlue;
    } else if (condition.contains('sleet') ||
        condition.contains('freezing') ||
        condition.contains('ice pellets')) {
      return Colors.cyan;
    } else if (condition.contains('rain') ||
        condition.contains('drizzle') ||
        condition.contains('shower')) {
      return Colors.blue;
    } else if (condition.contains('cloud') ||
        condition.contains('overcast') ||
        condition.contains('mist') ||
        condition.contains('fog')) {
      return Colors.blueGrey;
    }

    return Colors.amber;
  }

  static LinearGradient getBackgroundGradient(String? day) {
    final color = getThemeColor(day);

    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [color.shade300, color.shade50],
    );
  }
}
