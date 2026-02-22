import 'shape.dart';

class Triangle extends Shape {
  double _base = 0;
  double _height = 0;
  Triangle(double base, double height) {
    this.base = base;
    this.height = height;
  }
  double get base => _base;
  double get height => _height;

  set base(double input) {
    if (input < 0) {
      print('base cannot be a negative value');
    } else {
      _base = input;
    }
  }

  set height(double input) {
    if (input < 0) {
      print('height cannot be a negative value');
    } else {
      _height = input;
    }
  }

  @override
  double get area => 0.5 * _base * _height;
}
