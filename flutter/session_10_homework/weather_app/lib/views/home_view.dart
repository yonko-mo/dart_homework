import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/utils/weather_theme.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_widget.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/widgets/searched_weather_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  WeatherModel? weatherModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WeatherTheme.getThemeColor(
          weatherModel?.weatherCondition,
        ).shade500,
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: AppColors.textWhite,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              final result = await Navigator.push<WeatherModel>(
                context,
                MaterialPageRoute(builder: (context) => const SearchView()),
              );
              if (result != null) {
                setState(() {
                  weatherModel = result;
                });
              }
            },
            icon: const Icon(Icons.search, color: AppColors.textWhite),
          ),
        ],
      ),
      body: weatherModel == null
          ? const NoWeatherWidget()
          : SearchedWeatherWidget(weatherModel: weatherModel!),
    );
  }
}
