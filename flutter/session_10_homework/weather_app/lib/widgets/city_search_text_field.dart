import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';

class CitySearchTextField extends StatefulWidget {
  const CitySearchTextField({super.key});

  @override
  State<CitySearchTextField> createState() => _CitySearchTextFieldState();
}

class _CitySearchTextFieldState extends State<CitySearchTextField> {
  String _cityName = '';
  @override
  Widget build(BuildContext context) {
    return BlocListener<GetWeatherCubit, WeatherState>(
      listener: (context, state) {
        if (state is WeatherLoadedState) {
          Navigator.pop(context);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: TextField(
            onChanged: (value) {
              _cityName = value;
            },
            onSubmitted: (value) {
              var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getWeather(cityName: value);
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
              ),
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
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Search',
              hintText: 'Enter City Name',
            ),
          ),
        ),
      ),
    );
  }
}
