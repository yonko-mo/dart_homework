/*
Q2
Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names and years less than 1886 (first car invention).
- Add getters for both.
- In main(), demonstrate creating two car objects (one valid, one invalid input).
*/
import 'car.dart';

void main() {
  Car car1 = Car();
  car1.brand = 'toyota';
  car1.year = 2008;
  print("brand: ${car1.brand}");
  print("year: ${car1.year}");
  Car car2 = Car();
  car2.brand = 'mercedes';
  car2.year=1885;

  print("brand: ${car2.brand}");
  print("year: ${car2.year}");
}
