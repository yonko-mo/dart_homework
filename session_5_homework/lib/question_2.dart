/* 
Q2. Odd Numbers in a Range

- Ask the user to input a number n.
- Print all odd numbers between 1 and n, and also print how many odd numbers were found.
*/
import 'dart:io';

void main() {
  stdout.write('enter your number: ');
  int n = int.parse(stdin.readLineSync()!);
  
  int counter = 0;
  for (var i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      print("$i");
      counter++;
    }
  }
  print('$counter found');
}