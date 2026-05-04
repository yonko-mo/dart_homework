import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/utils/weather_theme.dart';

class SearchedWeatherWidget extends StatelessWidget {
  final WeatherModel weatherModel;
  const SearchedWeatherWidget({super.key, required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: WeatherTheme.getBackgroundGradient(
          weatherModel.weatherCondition,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel.cityName,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'updated at : ${weatherModel.date.split(' ')[1].split(':')[0]}:00',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network('https:${weatherModel.image!}'),
                Text(
                  '${weatherModel.avgTemp}',
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'maxTemp : ${weatherModel.maxTemp}',
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(
                      'minTemp : ${weatherModel.minTemp}',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              weatherModel.weatherCondition,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
