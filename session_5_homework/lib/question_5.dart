/*
Q5. Multiplication Table with Sum 

- Ask the user for a number. 
- Print its multiplication table up to 10, then calculate the sum of all results.
*/
import 'dart:io';

void main() {
  stdout.write('please enter a number: ');
  int number = int.parse(stdin.readLineSync()!);
  printTableAndSum(number);
}

void printTableAndSum(int number) {
  int sum = 0;
  for (var i = 1; i <= 10; i++) {
    int multiplicationResult = number * i;
    sum += multiplicationResult;
    print("$number * $i = ${multiplicationResult}");
  }
  stdout.write("Sum of all results: $sum");
}