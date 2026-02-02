/*
Q4. Simple List Analyzer

- Let the user enter 5 numbers into a list.
- Print the largest and smallest numbers, and then calculate the difference between them.
*/
import 'dart:io';

void main() {
  List<int> numbers = [];
  inputNumbers(listName: numbers, length: 5);
  int min = findMinimumNumber(numbers);
  print("The minimum number is $min");
  int max = findMaximumNumber(numbers);
  print("The maximum number is $max");
  int difference = max - min;
  print("The difference between min and max = $difference");
}

void inputNumbers({required List<int> listName, required int length}) {
  for (var i = 0; i < length; i++) {
    stdout.write('please enter number ${i + 1}: ');
    listName.add(int.parse(stdin.readLineSync()!));
  }
}

int findMinimumNumber(List<int> numbers) {
  int min = numbers[0];
  for (var element in numbers) {
    if (element < min) {
      min = element;
    }
  }
  return min;
}

int findMaximumNumber(List<int> numbers) {
  int max = numbers[0];
  for (var element in numbers) {
    if (element > max) {
      max = element;
    }
  }
  return max;
}