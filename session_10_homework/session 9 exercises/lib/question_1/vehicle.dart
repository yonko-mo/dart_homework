class Vehicle {
  String _name = '';
  double _fuelCapacity = 0;
  double _currentFuel = 0;
  double _baseConsumptionPerKm = 0;
  Vehicle(
    String name,
    double fuelCapacity,
    double currentFuel,
    double baseConsumptionPerKm,
  ) {
    this._name = name;
    this.fuelCapacity = fuelCapacity;
    this.currentFuel = currentFuel;
    this.baseConsumptionPerKm = baseConsumptionPerKm;
  }

  String get name => _name;
  double get fuelCapacity => _fuelCapacity;
  double get currentFuel => _currentFuel;
  double get baseConsumptionPerKm => _baseConsumptionPerKm;

  set fuelCapacity(double input) {
    if (input < 0) {
      print('fuel capacityvalue cannot be a negative value');
    } else {
      _fuelCapacity = input;
    }
  }

  set currentFuel(double input) {
    if (input < 0) {
      print('current fuel value cannot be a negative value');
    } else if (input > _fuelCapacity) {
      print('current fuel cannot exceed fuel capacity');
    } else {
      _currentFuel = input;
    }
  }

  set baseConsumptionPerKm(double input) {
    if (input < 0) {
      print('consumption value cannot be a negative value');
    } else {
      _baseConsumptionPerKm = input;
    }
  }

  double calculateFuel(double distance) {
    if (distance < 0) {
      print('distance cannot be negative');
      return 0;
    }
    return distance * _baseConsumptionPerKm;
  }

  bool canCompleteTrip(List<double> distances) {
    double totalFuelNeeded = 0;
    for (double distance in distances) {
      totalFuelNeeded += calculateFuel(distance);
    }
    return _currentFuel >= totalFuelNeeded;
  }
}
