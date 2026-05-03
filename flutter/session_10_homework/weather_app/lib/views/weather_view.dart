// import 'package:flutter/material.dart';
// import 'package:weather_app/model/weather_model.dart';
// import 'package:weather_app/widgets/no_weather_widget.dart';
// import 'package:weather_app/widgets/searched_weather_widget.dart';
// import 'package:weather_app/constants/colors.dart';

// class WeatherView extends StatefulWidget {
//   const WeatherView({super.key});

//   @override
//   State<WeatherView> createState() => _WeatherViewState();
// }

// class _WeatherViewState extends State<WeatherView> {
//   bool isWeatherSearched = false;
//   WeatherModel? weatherData;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.primaryBlue,
//         title: Row(
//           children: [
//             const Text(
//               'Weather',
//               style: TextStyle(
//                 color: AppColors.textWhite,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Spacer(),
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.search, color: AppColors.textWhite),
//             ),
//           ],
//         ),
//       ),
//       body: isWeatherSearched
//           ? SearchedWeatherWidget()
//           : const NoWeatherWidget(),
//     );
//   }
// }
