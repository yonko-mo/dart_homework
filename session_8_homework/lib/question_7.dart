/*
Q7
Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list.
*/
import 'dart:io';

void main() {
  List<int> numbers = [];
  stdout.write('enter the length of your list: ');
  int length = int.parse(stdin.readLineSync()!);
  if (length <= 0) {
    print('List must contain at least one number');
    return;
  }
  inputNumbers(listName: numbers, length: length);
  int largestNumber = numbers[0];
  int smallestNumber = numbers[0];
  int total = 0;
  int evenCounter = 0;
  int oddCounter = 0;
  for (var element in numbers) {
    if (element > largestNumber) {
      largestNumber = element;
    }
    if (element < smallestNumber) {
      smallestNumber = element;
    }
    if (element % 2 == 0) {
      evenCounter++;
    } else {
      oddCounter++;
    }
    total += element;
  }
  print('Largest Number: $largestNumber\nSmallest Number: $smallestNumber\nThe difference: ${largestNumber-smallestNumber}');
  double average = total / numbers.length;
  print("Average: $average");
  for (var element in numbers) {
    if (element > average) {
      print("$element is above average");
    }
  }
  print("Even counter: $evenCounter");
  print('Odd counter: $oddCounter');
}

void inputNumbers({required List<int> listName, required int length}) {
  for (var i = 0; i < length; i++) {
    stdout.write('enter number: ');
    listName.add(int.parse(stdin.readLineSync()!));
  }
}
