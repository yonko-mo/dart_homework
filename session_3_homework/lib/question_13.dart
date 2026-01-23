/*
Question 13
Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.
*/

/*
Grade Calculation:

If mark < 0 or > 100 -> Invalid input
If mark >= 90 and <= 100 -> A
Else if mark >= 80 -> B
Else if mark >= 70 -> C
Else -> D
*/
import 'dart:io';
void main() {
  print('please enter your mark: ');
  String? input = stdin.readLineSync();
  int? mark = int.tryParse(input ?? '');
  if (mark == null || mark < 0 || mark > 100) {
    print('Invalid mark. Please enter a value between 0 and 100.');
    return;
  }
  String grade;
  if (mark >= 90 && mark <= 100) {
    grade = 'A';
  } else if (mark >= 80) {
    grade = 'B';
  } else if (mark >= 70) {
    grade = 'C';
  } else {
    grade = 'D';
  }
  switch (grade) {
    case 'A':
      print("Excellent");
      break;
    case 'B':
      print("Very Good");
      break;
    case 'C':
      print("Good");
      break;
    case 'D':
      print("Pass");
      break;
    default:
      print('Invalid grade');
  }
}
