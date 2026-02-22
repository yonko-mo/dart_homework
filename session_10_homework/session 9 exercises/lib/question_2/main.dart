/*
Q2
Model shapes to compute total paintable area and cost.

Requirements:

- Provide a general shape type (concrete class) with an area() method that can be overridden.

- Implement at least three concrete shape types with encapsulated dimensions and validated constructors (invalid → print; keep previous).

- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client code).

- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total cost to 2 decimals.
*/
import 'rectangle.dart';
import 'shape.dart';
import 'square.dart';
import 'triangle.dart';

void main() {
  Square square = Square(5);
  Triangle triangle = Triangle(5, 10);
  Rectangle rectangle = Rectangle(10, 20);
  List<Shape> shapes = [square, triangle, rectangle];
  double totalArea = 0;
  for (var element in shapes) {
    totalArea += element.area;
  }
  double remainingArea = totalArea;
  double totalCost = 0;

  if (remainingArea > 50) {
    totalCost += 50 * 1.50;
    remainingArea -= 50;
  } else {
    totalCost += remainingArea * 1.50;
    remainingArea = 0;
  }

  if (remainingArea > 0) {
    if (remainingArea > 100) {
      totalCost += 100 * 1.25;
      remainingArea -= 100;
    } else {
      totalCost += remainingArea * 1.25;
      remainingArea = 0;
    }
  }

  totalCost += remainingArea * 1.00;

  print('Total Area: ${totalArea.toStringAsFixed(2)}');
  print('Total Cost: ${totalCost.toStringAsFixed(2)}');
}
