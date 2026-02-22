/*
Q1
Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:

- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid → print an error; keep previous values).

- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.

- Define a fuel computation method in the general type; specialized types must override it with their own
rule.

- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
which vehicles cannot complete the route under their own constraints (you define the constraint per
type).
*/
import 'car.dart';
import 'microbus.dart';
import 'vehicle.dart';

void main() {
  List<Vehicle> vehicles = [
    Microbus('microbus', 10, 60, 40, 0.08), // 10 passengers
    Car('automatic car', true, 50, 30, 0.1),
    Car('manual car', false, 50, 20, 0.1),
  ];
  List<double> tripDistances = [150, 100];

  for (var vehicle in vehicles) {
    if (vehicle.canCompleteTrip(tripDistances)) {
      print('${vehicle.name} can complete the trip');
    } else {
      print('${vehicle.name} can\'t complete the trip');
    }
  }
}
