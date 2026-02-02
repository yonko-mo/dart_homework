/*
Q8. Digits Operations 

- Ask the user for a number (e.g., 528).
- Print the sum of its digits and also print the largest digit.
*/
import 'dart:io';

// 528 % 10 = 8
// 528 / 10 = 52.8 -->52
// 52 % 10 = 2
// 52 / 10 = 5.2 --> 5
// 5 % 10 = 5
// 5 / 10
void main() {
  stdout.write('please enter a number: ');
  int number = int.parse(stdin.readLineSync()!);
  int digitsSum = 0;
  int digit = number % 10;
  int largestDigit = digit;
  while (number != 0) {
    digit = number % 10;
    digitsSum += digit;
    if (digit > largestDigit) {
      largestDigit = digit;
    }
    number ~/= 10;
  }
  print('Sum of digits: $digitsSum');
  print('Largest digit: $largestDigit');
}