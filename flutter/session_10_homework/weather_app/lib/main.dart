import 'package:flutter/material.dart';
import 'package:weather_app/utils/weather_theme.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: WeatherTheme.getThemeColor(null),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
