import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/utils/weather_theme.dart';

AppBar buildAppBar({
  List<Widget>? actions,
  required String title,
  WeatherModel? weatherModel,
}) {
  return AppBar(
    backgroundColor: WeatherTheme.getThemeColor(
      weatherModel?.conditionText,
    ).shade500,
    foregroundColor: Colors.white,
    title: const Text('Weather App'),
    actions: actions,
  );
}
