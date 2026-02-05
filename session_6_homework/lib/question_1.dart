/*
Q1. Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add a
method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call
the method.
*/
void main() {
  Calculator calculator = Calculator();
  calculator.addNumbers(5,6);
}

class Calculator {
  int? num1;
  int? num2;

  void addNumbers(int num1,int num2) {
    print("The sum is ${num1 + num2}");
  }
}
