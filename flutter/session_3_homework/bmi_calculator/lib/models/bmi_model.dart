import 'package:bmi_calculator/widgets/gender_selection_section.dart';

class BmiModel {
  Gender gender;
  double height;
  int weight;
  int age;

  BmiModel({
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
  });
  double calculateBmi() {
    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);
    return bmi;
  }
}
