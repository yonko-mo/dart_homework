import 'vehicle.dart';

class Car extends Vehicle {
  bool _isAutomatic = false;
  Car(
    String name,
    bool isAutomatic,
    double fuelCapacity,
    double currentFuel,
    double baseConsumptionPerKm,
  ) : super(name, fuelCapacity, currentFuel, baseConsumptionPerKm) {
    this._isAutomatic = isAutomatic;
  }

  bool get isAutomatic => _isAutomatic;
  @override
  double calculateFuel(double distance) {
    double baseFuel = super.calculateFuel(distance);

    if (_isAutomatic) {
      return baseFuel * 1.05;
    }

    return baseFuel;
  }
}
