import 'package:flutter/material.dart';
import 'package:weather_app/utils/build_app_bar.dart';
import 'package:weather_app/widgets/city_search_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'Search a City',
        color: Theme.of(context).primaryColor,
      ),
      body: const CitySearchTextField(),
    );
  }
}
