import 'forecast_day_model.dart';

class ForecastModel {
  final List<ForecastDayModel> forecastdays;

  const ForecastModel({required this.forecastdays});

  factory ForecastModel.fromJson(Map<String, dynamic> json) {
    return ForecastModel(
      forecastdays: (json['forecastday'] as List)
          .map((day) => ForecastDayModel.fromJson(day))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'forecastday': forecastdays.map((day) => day.toJson()).toList()};
  }
}
