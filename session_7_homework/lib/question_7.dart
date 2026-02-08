/*
Q7- Ask the user for a number (e.g., 9875). 
Keep summing its digits until the result is a single digit.
Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
*/
import 'dart:io';

// solution with big o(n^2)

void main() {
  stdout.write('enter a number: ');
  int number = int.parse(stdin.readLineSync()!);
  while (number >= 10) {
    int total = 0;
    String s = number.toString();

    for (int i = 0; i < s.length; i++) {
      total += int.parse(s[i]);
    }
    number = total;
  }
  print('the final single-digit result is $number');
}

// solution with big o(n) thought of it but i didn't think of how to write the code

/*
void main() {
  String s = '9875';
  int total = 0;
  stdout.write('enter a number: ');
  int number = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < s.length; i++) {
    total += int.parse(s[i]);

    if (i == s.length - 1 && total >= 10) {
      s = total.toString();
      total = 0;
      i = -1;
    }
  }

  print('the final single-digit result of $number is $total');
}
*/