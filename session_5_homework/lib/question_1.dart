/*
Q1. Sum, Average & Compare 

- Ask the user for three numbers. 
- Print their sum and average. Then, check if the average is greater than 50 or not.
*/
import 'dart:io';

void main() {
  List<double> numbers = [];
  inputNumbers(listName: numbers, length: 3);
  double sum = sumNumbers(listName: numbers);
  print("Sum: $sum");
  double average = sum / numbers.length;
  print("Average: $average");
  print(average > 50);
}

void inputNumbers({required List<double> listName, required int length}) {
  for (var i = 0; i < length; i++) {
    stdout.write('please enter number ${i + 1}: ');
    listName.add(double.parse(stdin.readLineSync()!));
  }
}

double sumNumbers({required List<double> listName}) {
  double sum = 0;
  for (var element in listName) {
    sum += element;
  }
  return sum;
}