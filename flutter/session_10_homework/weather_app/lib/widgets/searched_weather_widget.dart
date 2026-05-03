import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';

class SearchedWeatherWidget extends StatelessWidget {
  const SearchedWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.weatherGradientStart,
            AppColors.weatherGradientEnd,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Chicago',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text('updated at : 22:3', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/cloudy.png',
                  width: 100,
                  height: 100,
                ),
                const Text(
                  '3',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Column(
                  children: [
                    Text('maxTemp : 4', style: TextStyle(fontSize: 20)),
                    Text('minTemp : 0', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'Heavy Cloudy',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
