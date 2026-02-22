import 'shape.dart';

class Square extends Shape {
  double _sideLength=0;
  
  Square(double sideLength) {
    this.sideLength = sideLength; 
  }
  double get sideLength => _sideLength;

  set sideLength(double input) {
    if (input < 0) {
      print('side length cannot be a negative value');
    } else {
      _sideLength = input;
    }
  }

  @override
  double get area => _sideLength * _sideLength;
}
