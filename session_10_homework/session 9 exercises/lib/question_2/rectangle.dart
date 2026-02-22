import 'shape.dart';

class Rectangle extends Shape {
  double _width = 0;
  double _height = 0;
  Rectangle(double width, double height) {
    this.width = width;
    this.height = height;
  }
  double get width => _width;
  double get height => _height;
  set width(double input) {
    if (input < 0) {
      print('width cannot be a negative value');
    } else {
      _width = input;
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
  double get area => _width * _height;
}
