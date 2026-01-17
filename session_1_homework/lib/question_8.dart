// What is the difference between the num and double data types in Dart?

// answer: num is the superclass of numeric types and can store both int and double values, whereas double is used specifically for decimal numbers.

// Example:

void main() {
  // num example
  num value = 10; // int
  print(value); // it will print 10 as an int value

  value = 10.5; // double
  print(value); // here it will print 10.5 as a double value 

  // double example
  double price = 99.99;
  print(price);

  price = 50;
  print(price); // it will print 50.0 to make sure that 50 is a double value not int value
}
