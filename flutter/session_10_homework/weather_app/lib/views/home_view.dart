import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/build_app_bar.dart';
import 'package:weather_app/widgets/no_weather_widget.dart';
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
      appBar: buildAppBar(
        title: 'Weather App',
        weatherModel: weatherModel,
        actions: [
          IconButton(
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchView()),
              );
              setState(() {
                if (result != null) {
                  weatherModel = result;
                } else {
                  weatherModel = null;
                }
              });
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: weatherModel == null
          ? const NoWeatherWidget()
          : SearchedWeatherWidget(weatherModel: weatherModel!),
    );
  }
}
