import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class CitySearchTextField extends StatelessWidget {
  const CitySearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: TextField(
          onSubmitted: (value) async {
            WeatherModel weatherModel = await WeatherService(
              Dio(),
            ).getCurrentWeather(cityName: value);
            if (!context.mounted) return;
            Navigator.pop(context, weatherModel);
          },
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
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
