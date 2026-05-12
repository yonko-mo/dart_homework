import 'location_model.dart';
import 'current_model.dart';
import 'forecast_model.dart';

class WeatherModel {
  final LocationModel location;
  final CurrentModel current;
  final ForecastModel forecast;

  WeatherModel({
    required this.location,
    required this.current,
    required this.forecast,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      location: LocationModel.fromJson(json['location']),
      current: CurrentModel.fromJson(json['current']),
      forecast: ForecastModel.fromJson(json['forecast']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'location': location.toJson(),
      'current': current.toJson(),
      'forecast': forecast.toJson(),
    };
  }

  String get cityName => location.name;
  String get conditionIcon =>
      "https:${forecast.forecastdays.first.day.condition.icon}";
  String get conditionText => forecast.forecastdays.first.day.condition.text;
  DateTime get date => DateTime.parse(current.lastUpdated);
  double get maxTempC => forecast.forecastdays.first.day.maxtempC;
  double get minTempC => forecast.forecastdays.first.day.mintempC;
  double get avgTempC => forecast.forecastdays.first.day.avgtempC;
}
