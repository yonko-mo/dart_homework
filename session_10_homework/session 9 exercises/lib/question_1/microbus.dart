import 'vehicle.dart';

class Microbus extends Vehicle {
  int _passengerCount = 0;
  Microbus(
    String name,
    int passengerCount,
    double fuelCapacity,
    double currentFuel,
    double baseConsumptionPerKm,
  ) : super(name,fuelCapacity, currentFuel, baseConsumptionPerKm) {
    this.passengerCount = passengerCount;
  }

  int get passengerCount => _passengerCount;
  set passengerCount(int input) {
    if (input < 0 || input > 14) {
      print('number of passengers cannot be that value');
    } else {
      _passengerCount = input;
    }
  }

  @override
  double calculateFuel(double distance) {
    double baseFuel = super.calculateFuel(distance);

    // Each passenger increases fuel consumption by 1%
    double extraFactor = 1 + (_passengerCount * 0.01);

    return baseFuel * extraFactor;
  }
}
