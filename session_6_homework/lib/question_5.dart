/*
Q5. Find Second Largest Number

- Ask the user to enter 6 numbers in a list.
- Print the largest number and the second largest number (without sorting the list).
*/

import 'dart:io';

// void main() {
//   List<int> numbers = []; // 60 ,53, 10 , 20  ,15 , 25
//   for (var i = 0; i < 6; i++) {
//     stdout.write('please enter a number: ');
//     numbers.add(int.parse(stdin.readLineSync()!));
//   }
//   int largestNumber = numbers[0]; //60
//   int secondLargestNumber = numbers[0];
//   for (var i = 0; i < 6; i++) {
//     if (numbers[i] > largestNumber) {
//       secondLargestNumber = largestNumber;
//       largestNumber = numbers[i];
//     } else if (numbers[i] < largestNumber && numbers[i] > secondLargestNumber) {
//       secondLargestNumber = numbers[i];
//     }
//   }
//   print('The Largest Number is $largestNumber');
//   print('The Second Largest Number is $secondLargestNumber');
// }

// simple solution from eng tharwat
void main() {
  List<int> numbers = []; // 60 ,53, 10 , 20  ,15 , 25
  for (var i = 0; i < 6; i++) {
    stdout.write('enter a number: ');
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  int largestNumber = findLargestNumber(numbers);
  print('the largest number is $largestNumber');
  numbers.remove(largestNumber);
  int secondLargestNumber = findLargestNumber(numbers);
  print("the second largest number is $secondLargestNumber");
}

int findLargestNumber(List<int> numbers) {
  int largest = numbers[0];
  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  return largest;
}
