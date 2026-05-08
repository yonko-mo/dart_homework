import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class CitySearchTextField extends StatefulWidget {
  const CitySearchTextField({super.key});

  @override
  State<CitySearchTextField> createState() => _CitySearchTextFieldState();
}

class _CitySearchTextFieldState extends State<CitySearchTextField> {
  String _cityName = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: TextField(
          onChanged: (value) {
            _cityName = value;
          },
          onSubmitted: (value) async {
            WeatherModel weatherModel = await WeatherService(
              Dio(),
            ).getCurrentWeather(cityName: value);

            // ignore: use_build_context_synchronously
            Navigator.pop(context, weatherModel);
          },
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                _cityName;
              },
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 30,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: 'Search',
            hintText: 'Enter City Name',
          ),
        ),
      ),
    );
  }
}
